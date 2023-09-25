resource "aws_instance" "ansible_instance" {
  ami = "ami-00c6177f250e07ec1"
  subnet_id = "subnet-0ae06c8dcda425469"
  security_groups = [aws_security_group.ec2_sg.id]
  instance_type = "t2.micro"
  user_data = data.cloudinit_config.ansible_user_data.rendered
  tags = {
    Name = "DevOps_project-a-2_ansible_ec2"
  }
}

resource "aws_instance" "jenkins_instance" {
  ami = "ami-00c6177f250e07ec1"
  subnet_id = "subnet-0ae06c8dcda425469"
  security_groups = [aws_security_group.ec2_sg.id]
  instance_type = "t2.micro"
  user_data = data.cloudinit_config.jenkins_user_data.rendered
  tags = {
    Name = "DevOps_project-a-2_jenkins-ec2"
  }
}