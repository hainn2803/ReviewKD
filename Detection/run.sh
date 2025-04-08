#!/bin/bash -e
#SBATCH --job-name=rkd_baseline
#SBATCH --output=/lustre/scratch/client/movian/research/users/hainn14/ReviewKD/spp_noti/reviewkd_baseline.out
#SBATCH --error=/lustre/scratch/client/movian/research/users/hainn14/ReviewKD/spp_noti/reviewkd_baseline.err
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --mem-per-gpu=125G
#SBATCH --cpus-per-gpu=32
#SBATCH --partition=movianr
#SBATCH --mail-type=all
#SBATCH --mail-user=v.HaiNN14@vinai.io

module purge
module load python/miniconda3/miniconda3

# Corrected line
eval "$(conda shell.bash hook)"

conda activate /lustre/scratch/client/movian/research/users/hainn14/envs/reviewkd
cd /lustre/scratch/client/movian/research/users/hainn14/ReviewKD

python train_net.py --config-file configs/ReviewKD-R50-R101.yaml --num-gpus 1