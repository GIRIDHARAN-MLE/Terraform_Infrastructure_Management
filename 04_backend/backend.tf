terraform {
  backend "s3" {
    bucket = "terra-stateful-techpro"
    key = "terraform_statefull_repo/backend"
    region = "us-east-2"
  }
}
