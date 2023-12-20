#!/bin/bash

# BS
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt1_test_config_clean.yaml --ckpt $HOME/data/runs/kwt1_baseline_mean_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt2_test_config_clean.yaml --ckpt $HOME/data/runs/kwt2_baseline_mean_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt3_test_config_clean.yaml --ckpt $HOME/data/runs/kwt3_baseline_mean_snrmix/best.pth

# BD
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt1_test_config_clean.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_prenonoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt2_test_config_clean.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_prenonoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt3_test_config_clean.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_prenonoise_snrmix/best.pth

# PB
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt1_test_config_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt2_test_config_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt3_test_config_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata/best.pth

# PN
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt1_test_config_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_prenoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt2_test_config_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_prenoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt3_test_config_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_prenoise_snrmix/best.pth

# PNN
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt1_test_config_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_prenonoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt2_test_config_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_prenonoise_snrmix/best.pth
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/clean/kwt3_test_config_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_prenonoise_snrmix/best.pth