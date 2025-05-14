#!/bin/bash
sudo yum update -y
sudo yum install -y docker

sudo service docker start
sudo docker pull ghcr.io/benc-uk/nodejs-demoapp:4.9.9
sudo docker run -d -p 80:3000 ghcr.io/benc-uk/nodejs-demoapp:4.9.9
