#!/bin/bash
echo "Installing dependencies..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

cd /home/ec2-user/nodejs-aws-codedeploy-pipeline || exit 1
npm install --only=prod --silent 2>&1 | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log