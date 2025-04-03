#!/bin/bash
echo "Running before_install.sh..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Update system packages
sudo yum update -y | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# Install Node.js and npm if not installed
if ! command -v node &> /dev/null; then
    echo "Node.js not found, installing..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
    curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash - | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
    sudo yum install -y nodejs | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
fi

# Install PM2 globally
sudo npm install -g pm2 | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log