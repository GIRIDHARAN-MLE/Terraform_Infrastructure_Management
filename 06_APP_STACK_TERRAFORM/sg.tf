resource "aws_security_group" "tech-sg" {
    name = "tech-profile-sg"
    description = "elb-sg-techprofile"
    vpc_id = module.vpc_example_complete.vpc_id
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress {
        description      = "TLS from VPC"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "bastion-sg" {
    name = "bastion-tech-profile-sg"
    description = "bastion-elb-sg-techprofile"
    vpc_id = module.vpc_example_complete.vpc_id
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress {
        description      = "TLS from VPC"
        from_port        = 2
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = [var.MY_IP]
    } 
}
