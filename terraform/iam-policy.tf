resource "aws_iam_role_policy_attachment" "ssm" {

  role       = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ec2_profile" {

  name = "devops-profile"

  role = aws_iam_role.ec2_role.name
}
