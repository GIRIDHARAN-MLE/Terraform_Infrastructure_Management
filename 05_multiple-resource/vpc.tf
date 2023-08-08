resource "aws_vpc" "tech-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    tags = {
        Name = "TechVPC"
    }
}

resource "aws_subnet" "tech-pub-1" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "tech-pub-1"
    }
}

resource "aws_subnet" "tech-pub-2" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE2
    tags = {
        Name = "tech-pub-2"
    }
}

resource "aws_subnet" "tech-pub-3" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE3
    tags = {
        Name = "tech-pub-3"
    }
}

resource "aws_subnet" "tech-pri-1" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE1
    tags = {
        Name = "tech-pri-1"
    }
}

resource "aws_subnet" "tech-pri-2" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE2
    tags = {
        Name = "tech-pri-2"
    }
}

resource "aws_subnet" "tech-pri-3" {
    vpc_id = aws_vpc.tech-vpc.id
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = var.ZONE3
    tags = {
        Name = "tech-pri-3"
    }
}

resource "aws_internet_gateway" "tech-igw" {
    vpc_id = aws_vpc.tech-vpc.id
    tags = {
        Name = "tech-igw"
    }
}

resource "aws_route_table" "tech-pub-rt" {
  vpc_id = aws_vpc.tech-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tech-igw.id
  }

  tags = {
    Name = "tech-pub-rt"
  }
}

resource "aws_route_table_association" "tech-rta-1a" {
  subnet_id      = aws_subnet.tech-pub-1.id
  route_table_id = aws_route_table.tech-pub-rt.id
}

resource "aws_route_table_association" "tech-rta-2a" {
  subnet_id      = aws_subnet.tech-pub-2.id
  route_table_id = aws_route_table.tech-pub-rt.id
}

resource "aws_route_table_association" "tech-rta-3a" {
  subnet_id      = aws_subnet.tech-pub-3.id
  route_table_id = aws_route_table.tech-pub-rt.id
}
