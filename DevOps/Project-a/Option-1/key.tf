resource "tls_private_key" "ssh_key_gen" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "ssh_key_pair" {
  key_name   = "ssh_key_pair"
  public_key = tls_private_key.ssh_key_gen.public_key_openssh
}