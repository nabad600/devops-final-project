resource "aws_instance" "devops" {
  ami                         = "ami-0741dc526e1106ae5"
  subnet_id                   = "subnet-0ef305df01e29044e"
  instance_type               = "t2.small"
  vpc_security_group_ids      = [aws_security_group.devops_sg.id]
  key_name                    = "naba"
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
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
