variable "REGION" {
    default = "us-east-2"
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

variable "AMIS" {
    type = map
    default = {
        us-east-2 = "ami-069d73f3235b535bd"
        us-east-1 = "ami-06ca3ca175f37dd66"
    }
}

variable "USER" {
    default = "ec2-user"
}

variable "public-ip" {
    default = "techkey.pub"
}

variable "private-ip" {
    default = "techkey"
}

variable "my_ip" {
    default = "115.97.55.169/32"
}
