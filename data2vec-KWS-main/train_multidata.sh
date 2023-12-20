#!/bin/bash

# Data2Vec pretraining multidata
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec_multidata.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/multidata_config/kwt1_data2vec_config.yaml
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec_multidata.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/multidata_config/kwt2_data2vec_config.yaml
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train_data2vec_multidata.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/data2vec/data2vec_configs/multidata_config/kwt3_data2vec_config.yaml

# Finetune pretrained multidate
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/multidata/kwt1_finetune_mean_config_multidata.yaml --ckpt data/runs/kwt1_data2vec_multidata/best_encoder.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/multidata/kwt2_finetune_mean_config_multidata.yaml --ckpt data/runs/kwt2_data2vec_multidata/best_encoder.pth
# python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/multidata/kwt3_finetune_mean_config_multidata.yaml --ckpt data/runs/kwt3_data2vec_multidata/best_encoder.pth


# Extra 
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/train.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/KWT_configs/mixed_snr/kwt2_finetune_mean_config_snrmix.yaml --ckpt data/runs/kwt2_data2vec_prenoise_snrmix/best_encoder.pth