#!/bin/bash

# baseline mtr
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_baseline_mtr_config.yaml
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_baseline_mtr_config.yaml
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_baseline_mtr_config.yaml

# baseline clean
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_baseline_clean_config.yaml
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_baseline_clean_config.yaml
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_baseline_clean_config.yaml

# pretrain data2vec-noisy
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt1_data2vec_noise_config.yaml 
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt2_data2vec_noise_config.yaml 
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt3_data2vec_noise_config.yaml 

# pretraining data2vec-clean
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt1_data2vec_clean_config.yaml
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt2_data2vec_clean_config.yaml
python data2vec-KWS-main/train_data2vec.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt3_data2vec_clean_config.yaml

# finetune data2vec-noise
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_finetune_data2vec_noise_config.yaml --ckpt runs/kwt1_data2vec_noise/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_finetune_data2vec_noise_config.yaml --ckpt runs/kwt2_data2vec_noise/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_finetune_data2vec_noise_config.yaml --ckpt runs/kwt3_data2vec_noise/best_encoder.pth

# finetune data2vec-clean+noise
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_finetune_data2vec_clean_noise_config.yaml --ckpt runs/kwt1_data2vec_clean_noise/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_finetune_data2vec_clean_noise_config.yaml --ckpt runs/kwt2_data2vec_clean_noise/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_finetune_data2vec_clean_noise_config.yaml --ckpt runs/kwt3_data2vec_clean_noise/best_encoder.pth

# finetune data2vec-clean
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_finetune_data2vec_clean_config.yaml --ckpt runs/kwt1_data2vec_clean/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_finetune_data2vec_clean_config.yaml --ckpt runs/kwt2_data2vec_clean/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_finetune_data2vec_clean_config.yaml --ckpt runs/kwt3_data2vec_clean/best_encoder.pth

# pretraining data2vec-denoising
python data2vec-KWS-main/train_data2vec_denoising.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt1_data2vec_denoising_config.yaml
python data2vec-KWS-main/train_data2vec_denoising.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt2_data2vec_denoising_config.yaml
python data2vec-KWS-main/train_data2vec_denoising.py --conf data2vec-KWS-main/data2vec/data2vec_configs/kwt3_data2vec_denoising_config.yaml

# finetune data2vec-denoising
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt1_finetune_data2vec_denoising_config.yaml --ckpt runs/kwt1_data2vec_denoising/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt2_finetune_data2vec_denoising_config.yaml --ckpt runs/kwt2_data2vec_denoising/best_encoder.pth
python data2vec-KWS-main/train.py --conf data2vec-KWS-main/KWT_configs/kwt3_finetune_data2vec_denoising_config.yaml --ckpt runs/kwt3_data2vec_denoising/best_encoder.pth

