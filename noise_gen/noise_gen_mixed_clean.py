import numpy as np
# import librosa
import os
# import shutil
# from argparse import ArgumentParser
# import soundfile as sf
# from tqdm import tqdm
# from audiomentations import AddBackgroundNoise, PolarityInversion
from scipy.io import wavfile
import torchaudio
from torch_audiomentations import AddBackgroundNoise
from argparse import ArgumentParser
from tqdm import tqdm

def addNoise(wav_file, noise_file, new_file, snr):
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
    torchaudio.save(new_file, augmented_sound, sampling_rate)

def saveWithNoNoise(wav_file, new_file):
    speech_file = torchaudio.load(wav_file)
    sampling_rate = speech_file[1]
    speech_array = speech_file[0]
    # speech_array = speech_array.unsqueeze(0)

    torchaudio.save(new_file, speech_array, sampling_rate)

def createNoiseFolder(speech_commands, noise_path, noise_types, output_folder, snrs):
    noises_count = {}
    clean_c, noise_c = 0, 0
    for noise in noise_types:
        noises_count[noise] = 0
    snr_count = {}
    for snr_c in snrs:
        snr_count[f"{snr_c}"] = 0
    for speech_command, speech_command_folder in tqdm(speech_commands.items(), position=0, leave=True):
        noisy_speech_command_folder = f"{output_folder}/{speech_command}"
        os.makedirs(noisy_speech_command_folder, exist_ok=True)
        speech_command_files = os.listdir(speech_command_folder)
        for speech_command_file in tqdm(speech_command_files, position=1, leave=True):
            clean = np.random.choice([True, False])
            if not clean:
                clean_c += 1
                noise_type = np.random.choice(noise_types)
                noises_count[noise_type] += 1
                snr = np.random.choice(snrs)
                snr_count[f"{snr}"] += 1
                addNoise(f"{speech_command_folder}/{speech_command_file}", f"{noise_path}/{noise_type}/{noise_type}_train.wav", f"{noisy_speech_command_folder}/{speech_command_file}", snr)
            else:
                noise_c += 1
                saveWithNoNoise(f"{speech_command_folder}/{speech_command_file}", f"{noisy_speech_command_folder}/{speech_command_file}")
    print(clean_c, noise_c)
    return (noises_count, snr_count)


def getSpeechCommands(speech_commands_folder):
    speech_commands = os.listdir(speech_commands_folder)
    speech_commands = {command: f"{speech_commands_folder}/{command}" for command in speech_commands if command[0] != "_" and command[0] != "." and ".txt" not in command and command != "LICENSE" and command != "README.md"}
    return speech_commands


def main(speech_commands_folder, noise_path, noise_types, output_folder, snrs):
    speech_commands = getSpeechCommands(speech_commands_folder)
    count = createNoiseFolder(speech_commands, noise_path, noise_types, output_folder, snrs)
    print(count)


if __name__ == "__main__":
    parser = ArgumentParser(description="Arguments for generating noisy trainign data")
    parser.add_argument('-sc', '--speech_commands', type=str, required=True, help="Main folder that contains the speech commands")
    parser.add_argument('-np', '--noise_path', type=str, required=True, help="Path of the noise file")
    parser.add_argument('-nt', '--noise_type', action="append", required=True, help="Noise type")
    parser.add_argument('-of', '--output_folder', type=str, required=True, help="Path to save the new generated data")
    parser.add_argument('-snr', '--snr', type=int, nargs='+', required=True, help="Signal to noise ration in dB")
    args = parser.parse_args()
    main(args.speech_commands, args.noise_path, args.noise_type, args.output_folder, args.snr)
    # google_speech_commands = "/home/jacobuni/uni-projects/google_speech_commands_v2"
    # noise_path = "/home/jacobuni/uni-projects/kolbek_slt2016"
    # noise_types = ["bbl", "bus", "ped", "str"]
    # output_folder = "/home/jacobuni/uni-projects/noisy_google_speech_commands_v2/test3"
    # snrs = [-10, -5, 0, 5, 10, 15, 20]
    # main(google_speech_commands, noise_path, noise_types, output_folder, snrs)

