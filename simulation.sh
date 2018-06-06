#!/bin/bash
# Job name:
#SBATCH --job-name=CEU-Han
#
# Account:
#SBatch --account=salexucb
#
# Partition:
#SBATCH --partition=savio
# 
# Wall clock limit:
#SBATCH --time=3-00:00:00
#
## Command(s) to run:
date > start.log
../../simulation.py -p simulation.par
/global/scratch/moorjani/bin/mergeit -p ../../mergeit.par
/global/home/users/moorjani/bin/rolloffp -p ../../rolloffp.par > rolloffp.log
/global/home/users/moorjani/bin/rolljack -p ../../rolloffp.par > rolloffp.jlog 
date > end.log
