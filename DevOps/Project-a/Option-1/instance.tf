resource "aws_instance" "ec2_instance" {
  ami = "ami-00c6177f250e07ec1"
  subnet_id = "subnet-04ac400f23379860a"
  security_groups = [aws_security_group.ec2_sg.id]
  key_name = aws_key_pair.ssh_key_pair.key_name
  instance_type = "t2.micro"
  user_data = file("user_data.sh")
  tags = {
    Name = "DevOps_project-a_ec2"
  }
}