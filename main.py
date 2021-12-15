import subprocess
import os

shellFolder = './shell'
dependencyScript = 'installDependencies.sh'

os.chmod(f'{shellFolder}/{dependencyScript}',0o0777)
subprocess.run([f'{shellFolder}/{dependencyScript}'])