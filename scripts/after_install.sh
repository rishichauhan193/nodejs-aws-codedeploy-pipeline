# #!/bin/bash
# echo 'run after_install.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# echo 'cd /home/ec2-user/nodejs-server-cicd' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
# cd /home/ec2-user/nodejs-aws-codedeploy-pipeline >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# echo 'npm install' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log 
# npm install >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

#!/bin/bash
echo "Running after_install.sh..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

cd /home/ec2-user/nodejs-aws-codedeploy-pipeline || exit 1
npm run build 2>&1 | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

echo "Setting file permissions..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
sudo chown -R ec2-user:ec2-user /home/ec2-user/nodejs-aws-codedeploy-pipeline
sudo chmod -R 755 /home/ec2-user/nodejs-aws-codedeploy-pipeline
