terraform {
  backend "s3" {
    bucket = "terra-statefull-techstackpro"
    key = "terraform_stateful_stack/backend"
    region = "us-east-2"
  }
}
