"""Script for training KWT model"""
from argparse import ArgumentParser
from config_parser import get_config
import os
import yaml

import torch
from torch import nn
import wandb

from utils.loss import LabelSmoothingLoss
from utils.opt import get_optimizer
from utils.scheduler import WarmUpLR, get_scheduler
from utils.trainer import train, evaluate
from utils.dataset import get_loader
from utils.misc import seed_everything, count_params, get_model, calc_step, log


def testing(config):
    """
    Load the given weights and run a test
    :param config: KWT test configuration
    """

    config["exp"]["save_dir"] = os.path.join(config["exp"]["exp_dir"], config["exp"]["exp_name"])
    os.makedirs(config["exp"]["save_dir"], exist_ok=True)

    with open(config["test_list_file"], "r") as f:
        test_list = f.read().rstrip().split("\n")

    testloader = get_loader(test_list, config, train=False)

    # model
    model = get_model(config["hparams"]["model"])
    if args.ckpt:
        ckpt = torch.load(args.ckpt, map_location="cpu")
        model.load_state_dict(ckpt["model_state_dict"])
        print(f"Loaded checkpoint {args.ckpt}.")
    model = model.to(config["hparams"]["device"])
    print(f"Created model with {count_params(model)} parameters.")

    # loss
    if config["hparams"]["l_smooth"]:
        criterion = LabelSmoothingLoss(num_classes=config["hparams"]["model"]["num_classes"], smoothing=config["hparams"]["l_smooth"])
    else:
        criterion = nn.CrossEntropyLoss()

    #####################################
    # Test
    #####################################

    final_step = 1 

    # evaluating the final state (last.pth)
    test_acc, test_loss = evaluate(model, criterion, testloader, config["hparams"]["device"])
    log_dict = {
        "test_loss_last": test_loss,
        "test_acc_last": test_acc
    }
    log(log_dict, final_step, config)

    # evaluating the best validation state (best.pth)
    # ckpt = torch.load(os.path.join(config["exp"]["save_dir"], "best.pth"))
    model.load_state_dict(ckpt["model_state_dict"])
    print("Best ckpt loaded.")

    test_acc, test_loss = evaluate(model, criterion, testloader, config["hparams"]["device"])
    log_dict = {
        "test_loss_best": test_loss,
        "test_acc_best": test_acc
    }
    log(log_dict, final_step, config)


def main(args):
    """
    Calls test pipeline and sets up wandb logging if used
    :param args: input arguments
    """
    config = get_config(args.conf)
    seed_everything(config["hparams"]["seed"])

    if args.id:
        config["exp"]["exp_name"] = config["exp"]["exp_name"] + args.id

    if args.name:
        model_name = f"{config['exp']['exp_name']}_{args.name}"
    else:
        model_name = config["exp"]["exp_name"]

    if config["exp"]["wandb"]:
        if config["exp"]["wandb_api_key"] is not None:
            with open(config["exp"]["wandb_api_key"], "r") as f:
                os.environ["WANDB_API_KEY"] = f.read()
        
        elif os.environ.get("WANDB_API_KEY", False):
            print("Found API key from env variable.")
        
        else:
            wandb.login()

        with wandb.init(project=config["exp"]["proj_name"], name=model_name, config=config["hparams"]):
            testing(config)
    
    else:
        testing(config)


if __name__ == "__main__":
    parser = ArgumentParser("Driver code.")
    parser.add_argument("--conf", type=str, required=True, help="Path to config.yaml file.")
    parser.add_argument("--ckpt", type=str, required=False, help="Path to checkpoint file.", default=None)
    parser.add_argument("--id", type=str, required=False, help="Obtional experiment identifier.", default=None)
    parser.add_argument("--name", type=str, required=False, help="Add to name of model", default=None)
    args = parser.parse_args()

    main(args)
