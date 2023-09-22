terraform {

  backend "s3" {
    bucket  = "bootcamp32-dev-47"
    region  = "us-east-1"
    key     = "vpc/terraform.tfstate"
    encrypt = true
  }
}