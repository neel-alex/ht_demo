../simulation.py -p lambda_210/simulation.par
/global/scratch/moorjani/bin/mergeit -p lambda_210/mergeit.par
/global/home/users/moorjani/bin/rolloffp -p lambda_210/rolloffp.par > rolloffp.log
/global/home/users/moorjani/bin/rolljack -p lambda_210/rolloffp.par > rolloffp.jlog 
