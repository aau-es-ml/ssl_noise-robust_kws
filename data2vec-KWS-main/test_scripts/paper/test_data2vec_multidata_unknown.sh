#!/bin/bash

# snr-10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -10

# snr-5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr -5

# snr0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 0
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 0

# snr5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 5
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 5

# snr10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 10
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 10

# snr15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 15
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 15

# snr20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt1_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt1_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt2_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt2_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 20
python projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_new.py --conf projects/p9-ssl_for_noise-robust_kws/data2vec-KWS-main/test_configs/paper/unknown/kwt3_test_config_unknown.yaml --ckpt $HOME/data/runs/kwt3_finetune_mean_multidata+clean/best.pth -nt caf ssn -snr 20