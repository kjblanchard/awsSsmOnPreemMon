#Configure the service from a config file I have in SSM
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m onPremise -s -c ssm:AmazonCloudWatch-linux


sudo aws configure --profile AmazonCloudWatchAgent
sudo dpkg --purge amazon-cloudwatch-agent
/var/log/unifi/server.log