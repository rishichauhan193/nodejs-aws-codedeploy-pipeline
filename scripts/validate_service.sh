#!/bin/bash
echo "Validating service..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

if curl -s --head --request GET http://localhost:3000 | grep "200 OK" > /dev/null; then
    echo "Application is running." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
    exit 0
else
    echo "Application is NOT running!" | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
    exit 1
fi