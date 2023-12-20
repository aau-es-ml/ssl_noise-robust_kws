#!/bin/bash

# SNR -10
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr-10 -snr -10

echo "created noise files snr-10"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr-10

# SNR -5
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr-5 -snr -5

echo "created noise files snr-5"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr-5

# SNR 0
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr0 -snr 0

echo "created noise files snr0"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr0

# SNR 5
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr5 -snr 5

echo "created noise files snr5"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr5

# SNR 10
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr10 -snr 10

echo "created noise files snr10"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr10

# SNR 15
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr15 -snr 15

echo "created noise files snr15"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr15

# SNR 20
python noise_gen/noise_gen_mixed.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016 -nt ped -of $HOME/data/paper_ped_google_speech_commands/snr20 -snr 20

echo "created noise files snr20"

python copy_command_split_to_noise.py -o $HOME/data/google_speech_commands -s $HOME/data/paper_ped_google_speech_commands/snr20
