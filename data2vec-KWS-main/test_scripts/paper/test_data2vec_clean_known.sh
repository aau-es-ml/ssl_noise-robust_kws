#!/bin/bash

# snr-10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -10

# snr-5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr -5

# snr0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 0

# snr5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 5

# snr10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 10

# snr15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 15

# snr20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt1_test_config_known.yaml --ckpt $HOME/data/runs/kwt1_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt2_test_config_known.yaml --ckpt $HOME/data/runs/kwt2_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/known/kwt3_test_config_known.yaml --ckpt $HOME/data/runs/kwt3_baseline_finetune_mean_clean/best.pth -nt bus bbl ped str -snr 20