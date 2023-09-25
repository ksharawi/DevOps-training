data "cloudinit_config" "ansible_user_data" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = file("init.sh")
  }

  part {
    content_type = "text/cloud-config"
    content = yamlencode({
      write_files = [
        {
          content     = "${tls_private_key.ssh_key_gen.private_key_pem}"
          path        = "/root/.ssh/key.pem"
          owner       = "root:root"
          permissions = "0600"
        }
      ]
    })
  }
}

data "cloudinit_config" "jenkins_user_data" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/cloud-config"
    content = yamlencode({
      write_files = [
        {
          content     = "${tls_private_key.ssh_key_gen.public_key_openssh}"
          path        = "/root/.ssh/authorized_keys"
          owner       = "root:root"
          permissions = "0600"
        }
      ]
    })
  }
}