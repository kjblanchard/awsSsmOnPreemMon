#! /bin/sh
if sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m onPremise -s -c file:cloudWatchAgentConfig.json > /dev/null 2&>1; then
    echo Configured Cloudwatch agent!
else
    echo Issue with configuration.
fi