module "vpc_example_complete" {
    source = "terraform-aws-modules/vpc/aws//examples/complete"

    name = var.VPC_NAME
    cidr = var.VPC_CIDR

    azs = [var.ZONE1, var.ZONE2, var.ZONE3]
    private_subnets =  [var.PRIVATE_SUB1_CIDR, var.PRIVATE_SUB2_CIDR, var.PRIVATE_SUB3_CIDR]
    public_subnets =  [var.PUBLIC_SUB1_CIDR, var.PUBLIC_SUB2_CIDR, var.PUBLIC_SUB3_CIDR]

    enable_nat_gateway = true
    single_nat_gateway = true
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Terraform = "true"
        Environment = "Prod"
    }
    
    vpc_tags = {
        Name = var.VPC_NAME
    }
}
