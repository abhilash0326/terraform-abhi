# ami resources
data "aws_ami" "amazonlinux" {
most_recent = true
owners = ["amazon"]
filter {
name = name
values = [ "amzn2-ami-hvm-*-gp2" ]
}  
filter {
  name = "root_device-type"
  values = [ "ebs" ]
}
filter {
  name = "virtualization_type"
  values = [ "hvm" ]
}
filter {
  name = "architecture"
  values = [ "x86_64" ]
}
}

