provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2_name" {
    ami = "ami-0f**************"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "key_pem"
    vpc_security_group_ids = ["sg-0d1*********"]
    tags = {
        Name = "prol-instance"
        project  = "prols"
    }
}
