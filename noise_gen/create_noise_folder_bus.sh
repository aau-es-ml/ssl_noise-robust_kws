#!/bin/bash

#Noise bus
python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr -10

echo "snr -10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr -5

echo "snr -5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr 0

echo "snr 0"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr 5

echo "snr 5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr 10

echo "snr 10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr 15

echo "snr 15"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/bus/bus_train.wav -nt bus -of $HOME/data/bus_google_speech_commands -snr 20

echo "snr 20"