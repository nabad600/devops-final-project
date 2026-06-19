package terraform.security

deny[msg] {

  input.resource_type == "aws_security_group"

  input.ingress[_].from_port == 22

  input.ingress[_].cidr_blocks[_] == "0.0.0.0/0"

  msg := "SSH access from entire internet is prohibited"
}
