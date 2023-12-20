#!/bin/bash

# SNR -10
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr-10 -snr -10

echo "created noise files snr-10"



# SNR -5
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr-5 -snr -5

echo "created noise files snr-5"



# SNR 0
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr0 -snr 0

echo "created noise files snr0"



# SNR 5
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr5 -snr 5

echo "created noise files snr5"



# SNR 10
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr10 -snr 10

echo "created noise files snr10"



# SNR 15
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr15 -snr 15

echo "created noise files snr15"



# SNR 20
python noise_gen/noise_gen_mixed_from_txt.py -scf $HOME/data/google_speech_commands/_generated/testing_list.txt -np $HOME/data/kolbek_slt2016 -nt bus -of $HOME/data/paper_test_google_speech_commands/bus/snr20 -snr 20

echo "created noise files snr20"


