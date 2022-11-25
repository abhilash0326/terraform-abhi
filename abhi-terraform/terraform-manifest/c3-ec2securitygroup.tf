# security group for ssh
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "sample vpc"

  ingress {
    description      = "Allow port 22 traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}
# security group for web
resource "aws_security_group" "vpc-web" {
  name        = "vpc-ssh"
  description = "sample vpc"

  ingress {
    description      = "Allow port 80 traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-web"
  }
}
