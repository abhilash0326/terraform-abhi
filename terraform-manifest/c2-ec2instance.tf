resource "aws_instance" "myVM" {
    ami = "ami-0beaa649c482330f7"
    instance_type = "t2.micro"
      user_data = file("${path.module}/app1-install.sh")
tags = {
    Name = "my Demo vm"
}
}
