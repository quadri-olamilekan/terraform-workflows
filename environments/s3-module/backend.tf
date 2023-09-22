terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "bootcamp32-dev-47"
    region  = "us-east-1"
    key     = "s3/terraform.tfstate"
    encrypt = true
  }
}