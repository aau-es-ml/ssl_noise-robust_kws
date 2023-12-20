#!/bin/bash

# Fine-tuning snr-10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr-10.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr-10/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr-10.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr-10/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr-10.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr-10/best_encoder.pth

# Fine-tuning snr-5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr-5/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr-5/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr-5.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr-5/best_encoder.pth

# Fine-tuning snr0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr0.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr0/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr0.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr0/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr0.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr0/best_encoder.pth

# Fine-tuning snr5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr5.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr5/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr5.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr5/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr5.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr5/best_encoder.pth

# Fine-tuning snr10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr10.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr10/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr10.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr10/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr10.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr10/best_encoder.pth

# Fine-tuning snr15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr15.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr15/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr15.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr15/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr15.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr15/best_encoder.pth

# Fine-tuning snr20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt1_finetune_mean_config_snr20.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise_snr20/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt2_finetune_mean_config_snr20.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise_snr20/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/noise/kwt3_finetune_mean_config_snr20.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise_snr20/best_encoder.pth