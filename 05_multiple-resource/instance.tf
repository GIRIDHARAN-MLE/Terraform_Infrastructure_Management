resource "aws_key_pair" "tech-key" {
    key_name = "techkey"
    public_key = file(var.public-ip)
}

resource "aws_instance" "tech-instance" {
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE1
    subnet_id = aws_subnet.tech-pub-1.id
    key_name = aws_key_pair.tech-key.key_name
    vpc_security_group_ids = [aws_security_group.tech-sg.id]
    tags = {
        Name = "Tech-instance"
        Project = "Techway"
    }
}

resource "aws_ebs_volume" "tech-ebs" {
    availability_zone = var.ZONE1
    size = 2
    tags = {
        Name = "tech-vol-ebs"
    }
}

resource "aws_volume_attachment" "tech-vol-attach" {
    device_name = "/dev/xvdh"
    volume_id = aws_ebs_volume.tech-ebs.id
    instance_id = aws_instance.tech-instance.id
}

output "PublicIP" {
    value = aws_instance.tech-instance.public_ip
}
