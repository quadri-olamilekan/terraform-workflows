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

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "bootcamp32-quadri-74"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t2.micro"
  subnet_id     = data.terraform_remote_state.network.outputs.public_subnets[1]

  tags = {
    "Name" = "My_ec2"
  }
}