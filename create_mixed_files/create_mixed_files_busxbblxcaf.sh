#!/bin/bash

# busxbblxcaf
python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr-10 -o2 $HOME/data/bbl_google_speech_commands/snr-10 -o3 $HOME/data/caf_google_speech_commands/snr-10 -s $HOME/data/mixed_data/busxbblxcaf/snr-10

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr-5 -o2 $HOME/data/bbl_google_speech_commands/snr-5 -o3 $HOME/data/caf_google_speech_commands/snr-5 -s $HOME/data/mixed_data/busxbblxcaf/snr-5

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr0 -o2 $HOME/data/bbl_google_speech_commands/snr0 -o3 $HOME/data/caf_google_speech_commands/snr0 -s $HOME/data/mixed_data/busxbblxcaf/snr0

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr5 -o2 $HOME/data/bbl_google_speech_commands/snr5 -o3 $HOME/data/caf_google_speech_commands/snr5 -s $HOME/data/mixed_data/busxbblxcaf/snr5

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr10 -o2 $HOME/data/bbl_google_speech_commands/snr10 -o3 $HOME/data/caf_google_speech_commands/snr10 -s $HOME/data/mixed_data/busxbblxcaf/snr10

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr15 -o2 $HOME/data/bbl_google_speech_commands/snr15 -o3 $HOME/data/caf_google_speech_commands/snr15 -s $HOME/data/mixed_data/busxbblxcaf/snr15

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr20 -o2 $HOME/data/bbl_google_speech_commands/snr20 -o3 $HOME/data/caf_google_speech_commands/snr20 -s $HOME/data/mixed_data/busxbblxcaf/snr20