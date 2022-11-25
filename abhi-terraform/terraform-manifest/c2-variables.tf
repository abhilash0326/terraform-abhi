# AWS Region variable 
variable "aws_region" {
description = "Region for which EC2 instances created" 
type = string
default = "us-east-2" 
}

# EC2 instance type
variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"  
}

# Instance keypair
variable "instance_keypair" {
  description = "AWS key pair associated with the ec2 instance"
  type = string
  default = "terraform-keypair"
}
