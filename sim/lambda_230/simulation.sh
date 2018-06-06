../simulation.py -p lambda_230/simulation.par
/global/scratch/moorjani/bin/mergeit -p lambda_230/mergeit.par
/global/home/users/moorjani/bin/rolloffp -p lambda_230/rolloffp.par > rolloffp.log
/global/home/users/moorjani/bin/rolljack -p lambda_230/rolloffp.par > rolloffp.jlog 
