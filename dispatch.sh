#!/bin/bash
# Job name:
#SBATCH --job-name=CEU-YRI
#
# Account:
#SBatch --account=salexucb
#
# Partition:
#SBATCH --partition=savio
#
# Tasks per node
#SBATCH --ntasks-per-node=20
#
# Nodes
#SBATCH --nodes=1
# 
# Wall clock limit:
#SBATCH --time=10:00:00
#
## Command(s) to run:
date > start.log
module load gcc openmpi
ht_helper.sh -m "openblas/0.2.20,python/3.6,fftw/3.3.7,gcc/6.3.0,gsl/2.0" -t taskfile 
date > end.log

