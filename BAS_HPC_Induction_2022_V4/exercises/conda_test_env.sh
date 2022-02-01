#!/bin/bash
#SBATCH -n 1
#SBATCH -t 00:01:00
#SBATCH -J zero
#SBATCH --partition=short
#SBATCH --account=short
#SBATCH -o /data/hpcdata/users/pasumptest/slurmjobs/conda_test1.%j.output
#SBATCH -D /data/hpcdata/users/pasumtest/slurmjobs/

module purge

source .bashrc
conda activate /data/hpcdata/users/pasumptest/conda-envs/test1
