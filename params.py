import os

ns = [1, 5, 10, 20, 50, 100]
theta = [0.05, 0.10, 0.15, 0.20, 0.25]
lamb = list(range(10, 210, 10))
print(ns, theta, lamb)

base_dir = os.popen("pwd").read().strip()
print(base_dir)

os.chdir(base_dir + "/sim")
t = 0.2
n = 1
tasks = ""
for l in lamb:
    os.system("rm -r lambda_" + str(l))
    os.system("mkdir lambda_" + str(l))
    os.system("cp ../base/runsim.py lambda_"+str(l)+"/runsim.py")
    os.system("sed -i 's/_LAMB_/"+str(l)+"/g' lambda_"+str(l)+"/runsim.py")
    os.system("cp ../base/simulation.par lambda_"+str(l)+"/simulation.par")
    os.system("sed -i 's/_LAMB_/"+str(l)+"/g' lambda_"+str(l)+"/simulation.par")
    os.system("sed -i 's/_THET_/"+str.format('{0:.2f}', t)+"/g' lambda_"+str(l)+"/simulation.par")
    os.system("sed -i 's/_N_/"+str(n)+"/g' lambda_"+str(l)+"/simulation.par")
    tasks += "lambda_"+str(l)+"/runsim.py \n"


os.chdir(base_dir+"/sim")
os.system("chmod -R 0777 lambda_*")
with open("taskfile", 'w') as file:
    file.write(tasks)
