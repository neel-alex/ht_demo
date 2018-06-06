../simulation.py -p lambda_220/simulation.par
/global/scratch/moorjani/bin/mergeit -p lambda_220/mergeit.par
/global/home/users/moorjani/bin/rolloffp -p lambda_220/rolloffp.par > rolloffp.log
/global/home/users/moorjani/bin/rolljack -p lambda_220/rolloffp.par > rolloffp.jlog 
