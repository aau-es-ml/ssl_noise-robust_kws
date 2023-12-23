import numpy as np
import os
from tqdm import tqdm
from argparse import ArgumentParser

def saveNewTxt(generated_path, file, save_path):
    paths = np.genfromtxt(f"{generated_path}/_generated/{file}", dtype=str, delimiter="\n")
    # new_paths = np.empty_like(paths)
    # for i, path in enumerate(paths):
    new_paths = np.char.replace(paths, generated_path, save_path)
    os.makedirs(f"{save_path}/_generated", exist_ok=True)
    np.savetxt(f"{save_path}/_generated/{file}", new_paths, delimiter="\n", fmt='%s')
    


def main(generated_path, save_path):
    files = os.listdir(f"{generated_path}/_generated")
    for file in tqdm(files, position=0, leave=True):
        if file.endswith('.txt'):
            saveNewTxt(generated_path, file, save_path)


if __name__ == "__main__":
    parser = ArgumentParser(description="Arguments for generating noisy trainign data")
    parser.add_argument("-gp", "--generated_path", type=str, required=True, help="Path to google_speech_command")
    parser.add_argument("-sp", "--save_path", type=str, required=True, help="Path to the noisy folder")
    args = parser.parse_args()
    main(args.generated_path, args.save_path)