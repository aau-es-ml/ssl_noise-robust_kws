#!/bin/bash

# snr-10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr -10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr -10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr -10

# snr-5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr -5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr -5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr -5

# snr0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr 0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr 0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr 0

# snr5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr 5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr 5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr 5

# snr10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr 10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr 10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr 10

# snr15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr 15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr 15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr 15

# snr20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt1_test_config_known.yaml --ckpt runs/kwt1_baseline_clean/best.pth -nt bus bbl ped str -snr 20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt2_test_config_known.yaml --ckpt runs/kwt2_baseline_clean/best.pth -nt bus bbl ped str -snr 20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/known/kwt3_test_config_known.yaml --ckpt runs/kwt3_baseline_clean/best.pth -nt bus bbl ped str -snr 20