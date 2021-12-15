#Needed for cloudwatch agent.
if which collectd; then
    echo Collectd is installed
else
    echo Installing CollectD
    sudo apt install collectd
fi

if which wget; then
    echo Wget is installed
else
    apt install wget
fi

if which amazon-cloudwatch-agent-ctl; then
    echo Cloudwatch agent is installed
else
    echo Installing cloudwatch agent
    wget https://s2.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb -O /tmp/cwagent.deb
    sudo dpkg -i /tmp/cwagent.deb
fi
echo Dependencies Fully installed!