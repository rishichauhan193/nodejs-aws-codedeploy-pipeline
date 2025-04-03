# # scripts/application_stop.sh
# #!/bin/bash
# echo "Stopping application..."
# pm2 stop all || echo "No process running"
#!/bin/bash
echo "Stopping application..." | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
pm2 stop all || echo "No process running" | tee -a /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log