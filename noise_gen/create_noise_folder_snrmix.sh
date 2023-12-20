#!/bin/bash

python noise_gen/noise_gen_mixed_clean.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt bus -nt bbl -nt ped -nt str -of $HOME/data/paper_busxbblxpedxstr_google_speech_commands/snrmix_clean -snr -10 -5 0 5 10 15 20

echo "created noise files"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_busxbblxpedxstr_google_speech_commands/snrmix_clean