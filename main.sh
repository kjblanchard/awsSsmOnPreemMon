
#Needed for cloudwatch agent.
sudo apt install collectd
apt install wget
which amazon-cloudwatch-agent-ctl
sudo dpkg --purge amazon-cloudwatch-agent

#download the cloudwatch agent
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
#download it into tmp
sudo dpkg -i amazon-cloudwatch-agent.deb


sudo aws configure --profile AmazonCloudWatchAgent

#Remove cloudwatch agent
sudo dpkg -r amazon-ssm-agent

#or you could run it on the box with this:
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m onPremise -s -c ssm:AmazonCloudWatch-linux

/var/log/unifi/server.log
