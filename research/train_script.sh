#!/bin/bash
#SBATCH -w gnode113
#SBATCH -A plafnet2 
#SBATCH -p plafnet2
#SBATCH --mem-per-cpu=2G
#SBATCH --cpus-per-task=40
#SBATCH --gres=gpu:1
#SBATCH --time=4-00:00:00
#SBATCH --output=/scratch/Shaz/grid_gen_output.txt


export PATH=/scratch/Shaz/miniconda3/envs/mof_env/bin:$PATH
export LD_LIBRARY_PATH=/scratch/Shaz/miniconda3/envs/mof_env/lib:$LD_LIBRARY_PATH
