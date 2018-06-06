../simulation.py -p lambda_240/simulation.par
/global/scratch/moorjani/bin/mergeit -p lambda_240/mergeit.par
/global/home/users/moorjani/bin/rolloffp -p lambda_240/rolloffp.par > rolloffp.log
/global/home/users/moorjani/bin/rolljack -p lambda_240/rolloffp.par > rolloffp.jlog 
