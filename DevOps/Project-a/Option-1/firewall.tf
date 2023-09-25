resource "aws_security_group" "ec2_sg" {
  name        = "DevOps_project-a-1_sg"
  description = "Allow all ingress and egress traffic."
  vpc_id      = "vpc-09fa93bb1351cd9f3"
  egress {
    description      = "All Egress"
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "All Ingress"
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}