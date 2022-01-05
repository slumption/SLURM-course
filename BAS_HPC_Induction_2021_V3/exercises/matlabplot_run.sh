#!/bin/bash
#
#SBATCH --output=/data/hpcdata/users/pasump/jobs/matlab.%j.%N.out
#SBATCH --error=/data/hpcdata/users/pasump/jobs/matlab.%j.%N.err
#SBATCH -J matlab
#SBATCH --mem=16gb
#SBATCH --time=00:30:00
#SBATCH --mail-type=begin,end,fail,requeue
#SBATCH --mail-user=pasump@bas.ac.uk
#SBATCH --partition=short
#SBATCH --account=short
source /etc/profile.d/modules.sh

module purge
module load hpc/matlab/R2021a

SCRIPTNAME=/data/hpcdata/users/pasump/jobs/matlabplot.m
matlab -nodesktop -nosplash -nodisplay -r "try run('${SCRIPTNAME}'); catch exit; end; exit"
