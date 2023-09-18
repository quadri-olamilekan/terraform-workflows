terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Provider Block
provider "aws" {
  region = "us-east-1"
}

  backend "s3" {
    bucket = "bootcamp32-quadri-74"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"

  }

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.my_instance_type

  tags = {
    "Name" = "dev_ec2"
  }
}