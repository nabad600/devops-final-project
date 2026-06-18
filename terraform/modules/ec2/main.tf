resource "aws_instance" "web" {

  ami = "ami-0741dc526e1106ae5"

  instance_type = var.instance_type

  security_groups = [
    var.sg_id
  ]

  iam_instance_profile = var.instance_profile

  tags = {
    Name = "Terraform-Web"
  }
}
