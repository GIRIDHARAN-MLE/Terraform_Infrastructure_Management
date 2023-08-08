terraform {
  backend "s3" {
    bucket = "terra-statefull-tech-pro-stack"
    key = "terraform_statefull-stack/backend_vpc-ex6"
    region = "us-east-2"
  }
}
