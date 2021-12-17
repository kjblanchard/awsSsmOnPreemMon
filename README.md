Scripts to install cloudwatch agent on a on-prem node and configure it using a config file in the param store.

You do need to have a specific profile in your credentials, this could be automated, currently I do the following command.
sudo aws configure --profile AmazonCloudWatchAgent

To remove the package for testing.
sudo dpkg --purge amazon-cloudwatch-agent

I'm forwarding a log as well from:
/var/log/unifi/server.log