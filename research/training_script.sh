#!/bin/bash
#SBATCH -w gnode114
#SBATCH -A plafnet2 
#SBATCH -p plafnet2
#SBATCH --mem-per-cpu=2G
#SBATCH --cpus-per-task=40
#SBATCH --gres=gpu:2
#SBATCH --time=4-00:00:00
#SBATCH --output=/scratch/Shaz/Personal_projects/Text_Summarizer-Project/research/training_script_output.txt


export PATH=/scratch/Shaz/miniconda3/envs/textS/bin:$PATH
export LD_LIBRARY_PATH=/scratch/Shaz/miniconda3/envs/textS/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/scratch/Shaz/Personal_projects/Text_Summarizer-Project:$LD_LIBRARY_PATH

python training_script.py
