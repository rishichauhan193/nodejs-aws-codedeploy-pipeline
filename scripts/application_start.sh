# #!/bin/bash

# echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

# echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
# pm2 restart nodejs-express-app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

#!/bin/bash
echo "Running application_start.sh..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

cd /home/ec2-user/nodejs-aws-codedeploy-pipeline || exit 1
pm2 restart nodejs-express-app || pm2 start index.js --name nodejs-express-app 2>&1 | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log