#Needed for cloudwatch agent.
if which collectd; then
    echo Collectd is installed
else
    echo Installing CollectD
    sudo apt-get install collectd > /dev/null 2>&1
fi

if which wget; then
    echo wget is installed
else
    sudo apt-get install wget > /dev/null 2>&1
fi

if which amazon-cloudwatch-agent-ctl; then
    echo Cloudwatch agent is installed
else
    echo Installing cloudwatch agent
    wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb -O /tmp/cwagent.deb > /dev/null 2>&1
    sudo dpkg -i /tmp/cwagent.deb > /dev/null 2>&1
fi
echo Dependencies Fully installed!