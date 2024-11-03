#!/bin/bash
echo "1"
set -xe

# Log in to ECR
echo "2"
aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 227000603860.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from ECR
echo "3"
sudo docker pull 227000603860.dkr.ecr.us-east-1.amazonaws.com/cogitosum/ecr-01:latest

# Run the Docker container
echo "4"
sudo docker run -d -p 80:9080 -p 443:9443 227000603860.dkr.ecr.us-east-1.amazonaws.com/cogitosum/ecr-01:latest

rm /root/.aws/credentials

# Copy war file from S3 bucket to tomcat webapp folder
#aws s3 cp s3://defaultbuckethello/application.war /opt/ol/wlp/usr/servers/defaultServer/apps/application.war


# Ensure the ownership permissions are correct.
#chown -R root:root /opt/ol/wlp/usr/servers/defaultServer/apps