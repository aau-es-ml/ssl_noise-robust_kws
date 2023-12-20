#!/bin/bash

# snrmix baseline
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt1_baseline_mean_config_snrmix+clean.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt2_baseline_mean_config_snrmix+clean.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt3_baseline_mean_config_snrmix+clean.yaml

# clean baseline
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt1_baseline_mean_config_clean.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt2_baseline_mean_config_clean.yaml
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt3_baseline_mean_config_clean.yaml

# snrmix pretrain
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr_and_clean/kwt1_data2vec_config_snrmix+clean.yaml 
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr_and_clean/kwt2_data2vec_config_snrmix+clean.yaml 
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr_and_clean/kwt3_data2vec_config_snrmix+clean.yaml 

# snrmix finetune noise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt1_finetune_mean_config_snrmix+clean.yaml --ckpt data/runs/kwt1_data2vec_prenoise_snrmix+clean/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt2_finetune_mean_config_snrmix+clean.yaml --ckpt data/runs/kwt2_data2vec_prenoise_snrmix+clean/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt3_finetune_mean_config_snrmix+clean.yaml --ckpt data/runs/kwt3_data2vec_prenoise_snrmix+clean/best_encoder.pth

# snrmix finetune no noise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt1_finetune_mean_config_prenonoise_snrmix+clean.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt2_finetune_mean_config_prenonoise_snrmix+clean.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt3_finetune_mean_config_prenonoise_snrmix+clean.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise/best_encoder.pth

# finetune no prenoise and no fintune noise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt1_baseline_finetune_mean_config_clean.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt2_baseline_finetune_mean_config_clean.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr_and_clean/kwt3_baseline_finetune_mean_config_clean.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise/best_encoder.pth