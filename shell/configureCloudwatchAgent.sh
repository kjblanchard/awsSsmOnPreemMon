#! /bin/sh
/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m onPremise -s -c file:cloudWatchAgentConfig.json 2>&1 > /dev/null
code=$?

if [ $code -eq 0 ] ; then
    echo Configured Cloudwatch agent!
else
    echo Issue with configuration, error code is $code.
fi