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

def createNoiseFolder(speech_commands, noise_path, noise_type, output_folder, snr):
    for speech_command, speech_command_folder in tqdm(speech_commands.items(), position=0, leave=True):
        noisy_speech_command_folder = f"{output_folder}/snr{int(snr)}/{speech_command}"
        os.makedirs(noisy_speech_command_folder, exist_ok=True)
        speech_command_files = os.listdir(speech_command_folder)
        for speech_command_file in tqdm(speech_command_files, position=1, leave=True):
            addNoise(f"{speech_command_folder}/{speech_command_file}", noise_path, f"{noisy_speech_command_folder}/{speech_command_file}", snr)

def getSpeechCommands(speech_commands_folder):
    speech_commands = os.listdir(speech_commands_folder)
    speech_commands = {command: f"{speech_commands_folder}/{command}" for command in speech_commands if command[0] != "_" and command[0] != "." and ".txt" not in command and command != "LICENSE" and command != "README.md"}
    return speech_commands


def main(speech_commands_folder, noise_path, noise_type, output_folder, snr):
    speech_commands = getSpeechCommands(speech_commands_folder)
    createNoiseFolder(speech_commands, noise_path, noise_type, output_folder, snr)


if __name__ == "__main__":
    parser = ArgumentParser(description="Arguments for generating noisy trainign data")
    parser.add_argument('-sc', '--speech_commands', type=str, required=True, help="Main folder that contains the speech commands")
    parser.add_argument('-np', '--noise_path', type=str, required=True, help="Path of the noise file")
    parser.add_argument('-nt', '--noise_type', type=str, required=True, help="Noise type")
    parser.add_argument('-of', '--output_folder', type=str, required=True, help="Path to save the new generated data")
    parser.add_argument('-snr', '--snr', type=float, required=True, help="Signal to noise ration in dB")
    # google_speech_commands = "/home/jacobuni/uni-projects/google_speech_commands_v2"
    # noise_path = "/home/jacobuni/uni-projects/kolbek_slt2016/bbl/bbl_train.wav"
    # noise_type = "bbl"
    # output_folder = "/home/jacobuni/uni-projects/noisy_google_speech_commands_v2"
    # snr = 0.
    args = parser.parse_args()
    main(args.speech_commands, args.noise_path, args.noise_type, args.output_folder, args.snr)

