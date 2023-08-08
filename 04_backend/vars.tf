variable "REGION" {
    default = "us-east-2"
}

variable "ZONE1" {
    default = "us-east-2a"
}

variable "AMIS" {
    type = map
    default = {
        us-east-2 = "ami-069**************"
        us-east-1 = "ami-06***************"
    }
  
}

variable "USER" {
    default = "ec2-user"
}
