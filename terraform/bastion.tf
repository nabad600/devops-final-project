resource "aws_instance" "devops" {
  ami                         = "ami-0741dc526e1106ae5"
  subnet_id                   = "subnet-0ef305df01e29044e"
  instance_type               = "t2.small"
  vpc_security_group_ids      = ["sg-04c7a0687f6f2e33b"]
  key_name                    = "naba"
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 40
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "devops-server"
  }
}
