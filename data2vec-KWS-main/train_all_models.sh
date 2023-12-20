#!/bin/bash

# Baselines
python  projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/kwt1_baseline_mean_config.yaml
python train.py --conf KWT_configs/kwt2_baseline_mean_config.yaml
python train.py --conf KWT_configs/kwt3_baseline_mean_config.yaml

# Data2Vec pretraining
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/kwt1_data2vec_config.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/kwt2_data2vec_config.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/kwt3_data2vec_config.yaml
    
# # Fine-tuning
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise/best_encoder.pth
