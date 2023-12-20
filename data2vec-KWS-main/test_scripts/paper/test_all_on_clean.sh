#!/bin/bash

# Baseline - clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_baseline_mean_clean/best.pth --name baseline_clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_baseline_mean_clean/best.pth --name baseline_clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_baseline_mean_clean/best.pth --name baseline_clean

# Baseline - Noisy
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_baseline_mean_snrmix+clean/best.pth --name baseline_noisy
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_baseline_mean_snrmix+clean/best.pth --name baseline_noisy
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_baseline_mean_snrmix+clean/best.pth --name baseline_noisy

# Data2Vec - clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth --name data2vec_clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth --name data2vec_clean
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth --name data2vec_clean

# Data2Vec - prenonoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_prenonoise_snrmix+clean/best.pth --name data2vec_prenonoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_prenonoise_snrmix+clean/best.pth --name data2vec_prenonoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_prenonoise_snrmix+clean/best.pth --name data2vec_prenonoise

# Data2Vec - prenoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_prenoise_snrmix+clean/best.pth --name data2vec_prenoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_prenoise_snrmix+clean/best.pth --name data2vec_prenoise
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_prenoise_snrmix+clean/best.pth --name data2vec_prenoise

# Data2Vec - denoising
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt1_test_all_clean.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth --name data2vec_denoising
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt2_test_all_clean.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth --name data2vec_denoising
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/clean/kwt3_test_all_clean.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth --name data2vec_denoising