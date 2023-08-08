variable "AWS_REGION" {
    default = "us-east-2"
}

variable "AMIS" {
    type = map
    default = {
        us-east-2 = "ami-04****************"
        us-east-1 = "ami-887***************"
        ap-south-1 = "ami-676**************"
    }
}

variable "PRIVATE_KEYS" {
    default = "techkey"
}

variable "PUBLIC_KEYS" {
    default = "techkey.pub"
}

variable "USER" {
    default = "ubuntu"
}

variable "MY_IP" {
    default = "1**.9*.8*.5*/32"
}

variable "rmquser" {
    default = "rabbit"
}

variable "rmqpass" {
    default = "rmqpasswd#!7768"
}

variable "dbuser" {
    default = "admin"
}

variable "dbpass" {
    default = "admin$1234"
}

variable "dbname" {
    default = "accounts"
}

variable "instance_count" {
    default = "1"
}

variable "VPC_NAME" {
    default = "techprofile-vpc"
}

variable "ZONE1" {
    default = "us-east-2a"  
}

variable "ZONE2" {
    default = "us-east-2b"  
}

variable "ZONE3" {
    default = "us-east-2c"  
}

variable "VPC_CIDR" {
    default = "172.21.0.0/16"
}

variable "PUBLIC_SUB1_CIDR" {
    default = "172.21.1.0/24"
}

variable "PUBLIC_SUB2_CIDR" {
    default = "172.21.2.0/24"
}

variable "PUBLIC_SUB3_CIDR" {
    default = "172.21.3.0/24"
}

variable "PRIVATE_SUB1_CIDR" {
    default = "172.21.4.0/24"
}

variable "PRIVATE_SUB2_CIDR" {
    default = "172.21.5.0/24"
}

variable "PRIVATE_SUB3_CIDR" {
    default = "172.21.6.0/24"
}
