#!/bin/bash
adduser dev
usermod -aG sudo dev
ufw allow OpenSSH
ufw enable
echo Dev setup complete

sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo systemctl status docker
echo "--> Docker installed"

# Prerequisite: check latest version of docker-compose: https://github.com/docker/compose/releases
DOCKER_COMPOSE_VERSION=v2.6.0
URL="https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)"
echo The URL is: $URL
sudo curl -L "$URL" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "--> Docker compose installed"

sudo chmod 666 /var/run/docker.sock

