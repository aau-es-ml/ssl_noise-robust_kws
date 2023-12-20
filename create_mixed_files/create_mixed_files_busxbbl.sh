#!/bin/bash

# busxbbl
python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr-10 -o2 $HOME/data/bbl_google_speech_commands/snr-10 -s $HOME/data/mixed_data/busxbbl/snr-10

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr-5 -o2 $HOME/data/bbl_google_speech_commands/snr-5 -s $HOME/data/mixed_data/busxbbl/snr-5

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr0 -o2 $HOME/data/bbl_google_speech_commands/snr0 -s $HOME/data/mixed_data/busxbbl/snr0

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr5 -o2 $HOME/data/bbl_google_speech_commands/snr5 -s $HOME/data/mixed_data/busxbbl/snr5

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr10 -o2 $HOME/data/bbl_google_speech_commands/snr10 -s $HOME/data/mixed_data/busxbbl/snr10

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr15 -o2 $HOME/data/bbl_google_speech_commands/snr15 -s $HOME/data/mixed_data/busxbbl/snr15

python create_mixed_files/create_mixed_noise_files.py -o1 $HOME/data/bus_google_speech_commands/snr20 -o2 $HOME/data/bbl_google_speech_commands/snr20 -s $HOME/data/mixed_data/busxbbl/snr20