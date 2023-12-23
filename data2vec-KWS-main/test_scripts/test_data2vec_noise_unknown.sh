#!/bin/bash

# snr-10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr -10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr -10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr -10

# snr-5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr -5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr -5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr -5

# snr0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr 0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr 0
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr 0

# snr5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr 5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr 5
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr 5

# snr10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr 10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr 10
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr 10

# snr15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr 15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr 15
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr 15

# snr20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt1_test_config_unknown.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth -nt caf ssn -snr 20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt2_test_config_unknown.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth -nt caf ssn -snr 20
python data2vec-KWS-main/test_new.py --conf data2vec-KWS-main/test_configs/unknown/kwt3_test_config_unknown.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth -nt caf ssn -snr 20