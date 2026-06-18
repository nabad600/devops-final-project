resource "aws_instance" "web" {

  ami = "ami-xxxxxxxx"

  instance_type = var.instance_type

  security_groups = [
    var.sg_id
  ]

  iam_instance_profile = var.instance_profile

  tags = {
    Name = "Terraform-Web"
  }
}
