resource "aws_instance" "tech_instance" {
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE1
    key_name = "dev-key.pem"
    vpc_security_group_ids = ["sg-********"]
    tags = {
        Name = "tech_instance"
        Project = "TECH"
    }  
}
