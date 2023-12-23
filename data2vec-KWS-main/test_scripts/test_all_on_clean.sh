#!/bin/bash

# Baseline - clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_baseline_clean/best.pth --name baseline_clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_baseline_clean/best.pth --name baseline_clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_baseline_clean/best.pth --name baseline_clean

# Baseline - Noisy
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_baseline_mtr/best.pth --name baseline_mtr
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_baseline_mtr/best.pth --name baseline_mtr
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_baseline_mtr/best.pth --name baseline_mtr

# Data2Vec - clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_finetune_data2vec_clean/best.pth --name data2vec_clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_finetune_data2vec_clean/best.pth --name data2vec_clean
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_finetune_data2vec_clean/best.pth --name data2vec_clean

# Data2Vec - clean+noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_finetune_data2vec_clean_noise/best.pth --name data2vec_clean_noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_finetune_data2vec_clean_noise/best.pth --name data2vec_clean_noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_finetune_data2vec_clean_noise/best.pth --name data2vec_clean_noise

# Data2Vec - noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_finetune_data2vec_noise/best.pth --name data2vec_noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_finetune_data2vec_noise/best.pth --name data2vec_noise
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_finetune_data2vec_noise/best.pth --name data2vec_noise

# Data2Vec - denoising
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt1_test_all_clean.yaml --ckpt runs/kwt1_finetune_data2vec_denoising/best.pth --name data2vec_denoising
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt2_test_all_clean.yaml --ckpt runs/kwt2_finetune_data2vec_denoising/best.pth --name data2vec_denoising
python data2vec-KWS-main/test.py --conf data2vec-KWS-main/test_configs/clean/kwt3_test_all_clean.yaml --ckpt runs/kwt3_finetune_data2vec_denoising/best.pth --name data2vec_denoising