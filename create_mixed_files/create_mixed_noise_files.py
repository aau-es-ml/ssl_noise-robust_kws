import numpy as np
import os
from argparse import ArgumentParser

def mix2(generated_path_noise1, generated_path_noise2, file, save_path):
    paths_noise1 = np.genfromtxt(f"{generated_path_noise1}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise2 = np.genfromtxt(f"{generated_path_noise2}/_generated/{file}", dtype=str, delimiter="\n")
    amount_noise1 = int(len(paths_noise1)/2)
    amount_noise2 = int(len(paths_noise2) - amount_noise1)

    random_noise1 = np.random.choice(paths_noise1, amount_noise1)
    random_noise2 = np.random.choice(paths_noise2, amount_noise2)

    mixed_paths = np.concatenate((random_noise1, random_noise2), axis=None)

    os.makedirs(f"{save_path}/_generated", exist_ok=True)
    np.savetxt(f"{save_path}/_generated/{file}", mixed_paths, delimiter="\n", fmt='%s')


def mix3(generated_path_noise1, generated_path_noise2, generated_path_noise3, file, save_path):
    paths_noise1 = np.genfromtxt(f"{generated_path_noise1}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise2 = np.genfromtxt(f"{generated_path_noise2}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise3 = np.genfromtxt(f"{generated_path_noise3}/_generated/{file}", dtype=str, delimiter="\n")

    amount_noise1 = int(len(paths_noise1)/3)
    amount_noise2 = int(len(paths_noise2)/3)
    amount_noise3 = int(len(paths_noise3) - amount_noise1 - amount_noise2)

    random_noise1 = np.random.choice(paths_noise1, amount_noise1)
    random_noise2 = np.random.choice(paths_noise2, amount_noise2)
    random_noise3 = np.random.choice(paths_noise3, amount_noise3)

    mixed_paths = np.concatenate((random_noise1, random_noise2, random_noise3), axis=None)

    os.makedirs(f"{save_path}/_generated", exist_ok=True)
    np.savetxt(f"{save_path}/_generated/{file}", mixed_paths, delimiter="\n", fmt='%s')

def mix4(generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4, file, save_path):
    paths_noise1 = np.genfromtxt(f"{generated_path_noise1}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise2 = np.genfromtxt(f"{generated_path_noise2}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise3 = np.genfromtxt(f"{generated_path_noise3}/_generated/{file}", dtype=str, delimiter="\n")
    paths_noise4 = np.genfromtxt(f"{generated_path_noise4}/_generated/{file}", dtype=str, delimiter="\n")

    amount_noise1 = int(len(paths_noise1)/4)
    amount_noise2 = int(len(paths_noise2)/4)
    amount_noise3 = int(len(paths_noise3)/4)
    amount_noise4 = int(len(paths_noise3) - amount_noise1 - amount_noise2 - amount_noise3)

    random_noise1 = np.random.choice(paths_noise1, amount_noise1)
    random_noise2 = np.random.choice(paths_noise2, amount_noise2)
    random_noise3 = np.random.choice(paths_noise3, amount_noise3)
    random_noise4 = np.random.choice(paths_noise4, amount_noise4)

    mixed_paths = np.concatenate((random_noise1, random_noise2, random_noise3, random_noise4), axis=None)

    os.makedirs(f"{save_path}/_generated", exist_ok=True)
    np.savetxt(f"{save_path}/_generated/{file}", mixed_paths, delimiter="\n", fmt='%s')


def main(save_path, generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4):
    if generated_path_noise3 == None:
        mix2(generated_path_noise1, generated_path_noise2, "training_list.txt", save_path)
        mix2(generated_path_noise1, generated_path_noise2, "pretraining_list.txt", save_path)
        mix2(generated_path_noise1, generated_path_noise2, "testing_list.txt", save_path)
        mix2(generated_path_noise1, generated_path_noise2, "validation_list.txt", save_path)
    elif generated_path_noise4 == None:
        mix3(generated_path_noise1, generated_path_noise2, generated_path_noise3, "training_list.txt", save_path)
        mix3(generated_path_noise1, generated_path_noise2, generated_path_noise3, "pretraining_list.txt", save_path)
        mix3(generated_path_noise1, generated_path_noise2, generated_path_noise3, "testing_list.txt", save_path)
        mix3(generated_path_noise1, generated_path_noise2, generated_path_noise3, "validation_list.txt", save_path)
    else:
        mix4(generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4, "training_list.txt", save_path)
        mix4(generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4, "pretraining_list.txt", save_path)
        mix4(generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4, "testing_list.txt", save_path)
        mix4(generated_path_noise1, generated_path_noise2, generated_path_noise3, generated_path_noise4, "validation_list.txt", save_path)

if __name__ == "__main__":
    parser = ArgumentParser(description="Arguments for generating textfiles with mixed noisy data")
    parser.add_argument("-o1", "--generated_path1", type=str, required=True, help="Path to a noise generated folder")
    parser.add_argument("-o2", "--generated_path2", type=str, required=True, help="Path to another generated foled")
    parser.add_argument("-o3", "--generated_path3", type=str, required=False, help="Path to another generated foled", default=None)
    parser.add_argument("-o4", "--generated_path4", type=str, required=False, help="Path to another generated foled", default=None)
    parser.add_argument("-s", "--save_path", type=str, required=True, help="Path to the save folder")
    # generated_path1 = "/home/jacobuni/uni-projects/google_speech_commands_v2"
    # save_path = "/home/jacobuni/uni-projects/noisy_google_speech_commands_v2/bbl/snr0"

    args = parser.parse_args()

    # generated_path2 = "/home/jacobuni/uni-projects/notebooks"
    # generated_path3 = "/home/jacobuni/uni-projects/notebooks"
    # generated_path4 = "/home/jacobuni/uni-projects/google_speech_commands_v2"
    # save_path = "/home/jacobuni/uni-projects/mixed_noises/busxbbl"

    # main(save_path=save_path, generated_path_noise1=generated_path1, generated_path_noise2=generated_path2, generated_path_noise3=generated_path3,
    # generated_path_noise4=generated_path4)

    main(save_path=args.save_path, generated_path_noise1=args.generated_path1, generated_path_noise2=args.generated_path2, generated_path_noise3=args.generated_path3, generated_path_noise4=args.generated_path4)