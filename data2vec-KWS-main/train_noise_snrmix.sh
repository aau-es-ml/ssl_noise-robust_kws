#!/bin/bash

# snrmix baseline
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt1_baseline_mean_config_snrmix.yaml
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt2_baseline_mean_config_snrmix.yaml
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt3_baseline_mean_config_snrmix.yaml

# snrmix pretrain
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr/kwt1_data2vec_config_snrmix.yaml 
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr/kwt2_data2vec_config_snrmix.yaml 
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/mixed_snr/kwt3_data2vec_config_snrmix.yaml 

# snrmix finetune noise
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt1_finetune_mean_config_snrmix.yaml --ckpt data/runs/kwt1_data2vec_prenoise_snrmix/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt2_finetune_mean_config_snrmix.yaml --ckpt data/runs/kwt2_data2vec_prenoise_snrmix/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt3_finetune_mean_config_snrmix.yaml --ckpt data/runs/kwt3_data2vec_prenoise_snrmix/best_encoder.pth

# snrmix finetune no noise
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt1_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt2_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt3_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise/best_encoder.pth

# snrmix finetune no prenoise and no fintune noise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt1_baseline_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt1_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt2_baseline_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt2_data2vec_pre_nonoise/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt3_baseline_finetune_mean_config_prenonoise_snrmix.yaml --ckpt data/runs/kwt3_data2vec_pre_nonoise/best_encoder.pth