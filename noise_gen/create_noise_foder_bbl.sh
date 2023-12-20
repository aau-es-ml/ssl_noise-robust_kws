#!/bin/bash

# Noise bbl
python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr -10

echo "snr -10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr -5

echo "snr -5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr 0

echo "snr 0"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr 5

echo "snr 5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr 10

echo "snr 10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr 15

echo "snr 15"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bbl/bbl_train.wav -nt bbl -of $HOME/data/bbl_google_speech_commands -snr 20

echo "snr 20"
