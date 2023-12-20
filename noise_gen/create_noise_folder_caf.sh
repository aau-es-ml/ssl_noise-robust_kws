#!/bin/bash

#Noise cafe
python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr -10

echo "snr -10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr -5

echo "snr -5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr 0

echo "snr 0"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr 5

echo "snr 5"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr 10

echo "snr 10"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr 15

echo "snr 15"

python noise_gen/noise_gen.py -sc $HOME/data/google_speech_commands -np $HOME/data/kolbek_slt2016/caf/caf_train.wav -nt caf -of $HOME/data/caf_google_speech_commands -snr 20

echo "snr 20"