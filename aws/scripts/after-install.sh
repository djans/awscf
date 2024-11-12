#!/bin/bash
set -xe
# Get the number of running containers
running_containers=$(docker ps -q | wc -l)


if [ "$running_containers" -eq 1 ]; then
  echo "There is already $running_containers container running."
else
    # Log in to ECR
    aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 227000603860.dkr.ecr.us-east-1.amazonaws.com
    # Pull the Docker image from ECR
    sudo docker pull 227000603860.dkr.ecr.us-east-1.amazonaws.com/cogitosum/ecr-01:latest
    # Run the Docker container
    sudo docker run -d -p 80:9080 -p 443:9443 227000603860.dkr.ecr.us-east-1.amazonaws.com/cogitosum/ecr-01:latest
fi

rm /root/.aws/credentials