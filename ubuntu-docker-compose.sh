#! /bin/bash
#Updating current apt-get repository
sudo apt-get update -y

#Installing dependents packages
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

#Adding the docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

##Update the current apt-get repository
sudo apt-get update -y

#Insatlling docker latest version
sudo apt-get install docker-ce -y

#Running test docker service
sudo docker run hello-world

#Installing docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Setting required permissions for docker compose
sudo chmod +x /usr/local/bin/docker-compose

#Creating symlink for docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#Adding current user to docker group to avoid sudo prefix for running docker commands.
sudo usermod -aG docker $USER

#Verifying docker and docker compose functionalities
echo "your docker installtion is done, run 'sudo docker run hello-world' command to verify"
echo "your docker-compose installtion is done, run 'sudo docker-compose --version' command to verify"
