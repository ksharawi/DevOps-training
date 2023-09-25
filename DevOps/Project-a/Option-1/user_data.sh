#!/bin/bash
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo yum install python3 -y
sudo amazon-linux-extras install ansible2 -y

echo $(sudo yum list jenkins) > installed_packages
echo $(sudo yum list python) >> installed_packages
echo $(sudo amazon-linux-extras list | grep java) >> installed_packages
echo $(sudo amazon-linux-extras list | grep ansible) >> installed_packages




