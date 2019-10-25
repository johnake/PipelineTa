#!/bin/bash

set -e
ARG=$1

if [ "$ARG" = "create" ]
then
    export TF_IN_AUTOMATION=true
    echo "Deploying Terraform Infrastructure"
    cd infra && terraform init
    terraform apply -auto-approve

    # Assign variables based on TF output
    jenkins_node_endpoint=$(terraform output jenkins_node_endpoint)

    # Instal nodejs
    #sudo ssh -i jenkins_key1.pem ec2-user@${aws_instance.JenkinsBox.public_ip} -y
    #ssh -i jenkins_key1.pem ec2-user@ec2-34-249-109-218.eu-west-1.compute.amazonaws.com -y
    #sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
    #sudo . ~/.nvm/nvm.sh
    #sudo nvm install node

    
elif [ "$ARG" = "destroy" ]
then
    echo "Destroying ALL Terraform Infrastructure. This cannot be undone. You can 5 seconds to cancel (CTRL-C)!"
    sleep 5
    cd infra && terraform destroy -auto-approve
    echo "Destroy completed."
  fi
