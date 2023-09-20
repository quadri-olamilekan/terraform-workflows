module "s3" {
  source = "git@github.com:quadribello/Infra_Project.git//s3-module?ref=v1.1.0"
  env    = "dev"
}

#backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "bootcamp32-dev-13"
    region  = "us-east-1"
    key     = "action/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}