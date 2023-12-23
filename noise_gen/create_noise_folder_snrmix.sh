#!/bin/bash

python noise_gen/noise_gen_mixed_clean.py -sc google_speech_commands -np path_to_noise -nt bus -nt bbl -nt ped -nt str -of noisy_learning_google_speech_commands/snrmix -snr -10 -5 0 5 10 15 20

echo "created noise files"

python copy_gerated_folder_to_noise.py -gp google_speech_commands -sp noisy_learning_google_speech_commands/snrmix