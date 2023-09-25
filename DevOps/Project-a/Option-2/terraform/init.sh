#!/bin/bash
sufo yum update -y
amazon-linux-extras install java-openjdk11 -y
sudo amazon-linux-extras install ansible2 -y
echo $(sudo amazon-linux-extras list | grep ansible) > /home/ec2-user/installed_packages




