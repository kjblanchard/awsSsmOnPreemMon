import subprocess
import os
import time
import progressbar


shellFolder = './shell'
dependencyScript = 'installDependencies.sh'
cloudwatchConfigScript = 'configureCloudwatchAgent.sh'


def RunShellScript(shellScriptFilename, scriptDescription = 'running the script'):
    """Runs a shell script and notifys if there is an error code

    Args:
        shellScriptFilename (str): The filename and extension for the script in the scripts folder
        scriptDescription (str, optional): For logging, what you want it to say in the msg. Defaults to 'running the script'.
    """
    os.chmod(f'{shellFolder}/{shellScriptFilename}',0o0777)
    process = subprocess.run([f'{shellFolder}/{shellScriptFilename}'])
    if(process.returncode != 0):
        print(f'There was an issue when {scriptDescription}, please check {process}')
        exit()

def InstallDependencies():
    """Runs the shell script to install dependencies"""
    RunShellScript(dependencyScript)

def ConfigureCloudwatchAgent():
    """Runs the shell script to configure the cloudwatch agent"""
    RunShellScript(cloudwatchConfigScript)


if os.geteuid() != 0:
    print('You need to run this script as root.')
    exit()
progressbar.progressbar(30)
InstallDependencies()
progressbar.progressbar(60)
ConfigureCloudwatchAgent()
progressbar.progressbar(100)


