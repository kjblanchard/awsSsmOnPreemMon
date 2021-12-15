import subprocess
import os

os.chmod('./shell/installDependencies.sh',777)
subprocess.run(['./shell/installDependencies.sh'])