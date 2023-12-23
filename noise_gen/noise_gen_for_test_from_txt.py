import numpy as np
import os
from scipy.io import wavfile
import torchaudio
from torch_audiomentations import AddBackgroundNoise
from argparse import ArgumentParser
from tqdm import tqdm

def saveNewTxt(paths, file, save_path):
    new_paths = []
    for path in paths:
        new_paths.append(path.replace(path[:55], save_path))
    os.makedirs(f"{save_path}/_generated", exist_ok=True)
    np.savetxt(f"{save_path}/_generated/{file}", new_paths, delimiter="\n", fmt='%s')

def addNoise(wav_file, noise_file, new_file, snr):
    if wav_file[-1] == "\n":
        speech_file = torchaudio.load(wav_file[:-1])
    else:
        speech_file = torchaudio.load(wav_file)
    sampling_rate = speech_file[1]
    speech_array = speech_file[0]
    speech_array = speech_array.unsqueeze(0)

    transform = AddBackgroundNoise(
        background_paths=noise_file,
        sample_rate=sampling_rate,
        min_snr_in_db=snr,
        max_snr_in_db=snr,
        p=1.0
    )

    augmented_sound = transform(samples=speech_array, sample_rate=sampling_rate).squeeze(0)
    if wav_file[-1] == "\n":
        torchaudio.save(new_file[:-1], augmented_sound, sampling_rate)
    else:
        torchaudio.save(new_file, augmented_sound, sampling_rate)


def createNoiseFolder(speech_commands, noise_path, noise_types, output_folder, snrs):
    noises_count = {}
    for noise in noise_types:
        noises_count[noise] = 0
    snr_count = {}
    for snr_c in snrs:
        snr_count[f"{snr_c}"] = 0
    for speech_command in tqdm(speech_commands):
        noisy_speech_command_path = f"{output_folder}/{speech_command[56:]}"
        os.makedirs(noisy_speech_command_path[:-23], exist_ok=True)
        noise_type = np.random.choice(noise_types)
        noises_count[noise_type] += 1
        snr = np.random.choice(snrs)
        snr_count[f"{snr}"] += 1
        addNoise(speech_command, f"{noise_path}/{noise_type}/{noise_type}_test.wav", noisy_speech_command_path, snr)
    return (noises_count, snr_count)

def main(speech_commands_folder, noise_path, noise_types, output_folder, snrs):
    with open(speech_commands_folder) as f:
        speech_commands = f.readlines()
    count = createNoiseFolder(speech_commands, noise_path, noise_types, output_folder, snrs)
    print(count)
    saveNewTxt(speech_commands, "testing_list.txt", output_folder)


if __name__ == "__main__":
    parser = ArgumentParser(description="Arguments for generating noisy trainign data")
    parser.add_argument('-scf', '--speech_commands_file', type=str, required=True, help="path to file with path to all files e.g., testing.txt")
    parser.add_argument('-np', '--noise_path', type=str, required=True, help="Path of the noise file")
    parser.add_argument('-nt', '--noise_type', action="append", required=True, help="Noise type")
    parser.add_argument('-of', '--output_folder', type=str, required=True, help="Path to save the new generated data")
    parser.add_argument('-snr', '--snr', type=int, nargs='+', required=True, help="Signal to noise ration in dB")
    args = parser.parse_args()
    main(args.speech_commands_file, args.noise_path, args.noise_type, args.output_folder, args.snr)

