import subprocess
import os

shellFolder = './shell'
dependencyScript = 'installDependencies.sh'
cloudwatchConfigScript = 'configureCloudwatchAgent.sh'


def InstallDependencies():
    os.chmod(f'{shellFolder}/{dependencyScript}',0o0777)
    process = subprocess.run([f'{shellFolder}/{dependencyScript}'])
    if(process.returncode != 0):
        print(f'There was an issue when installing the dependencies, please check {process}')

def ConfigureCloudwatchAgent():
    os.chmod(f'{shellFolder}/{cloudwatchConfigScript}',0o0777)
    process = subprocess.run([f'{shellFolder}/{cloudwatchConfigScript}'])
    if(process.returncode != 0):
        print(f'There was an issue when configuring cloudwatch, please check {process}')


InstallDependencies()
ConfigureCloudwatchAgent()


