#! /usr/bin/env python3
import os

base_dir = os.popen("pwd").read().strip()
print(base_dir)

os.chdir(base_dir + "/lambda_80")

os.system("../../simulation.py -p simulation.par")
os.system("/global/scratch/moorjani/bin/mergeit -p ../../mergeit.par")
os.system("/global/home/users/moorjani/bin/rolloffp -p ../../rolloffp.par > rolloffp.log")
os.system("/global/home/users/moorjani/bin/rolljack -p ../../rolloffp.par > rolloffp.jlog")
