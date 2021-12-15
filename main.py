import subprocess
import os

shellFolder = './shell'
dependencyScript = 'installDependencies.sh'

os.chmod(f'{shellFolder}/{dependencyScript}',0o0777)
process = subprocess.run([f'{shellFolder}/{dependencyScript}'], stderr=subprocess.STDOUT)
print('finished')
print(process)