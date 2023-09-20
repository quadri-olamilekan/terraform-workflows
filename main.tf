module "s3" {
  source = "git@github.com:quadribello/Infra_Project.git//s3-module?ref=v1.0.2"
  region = "us-east-1"
  env    = "dev"
}

backend "s3" {
  bucket = "bootcamp32-dev-47"
  key    = "action/terraform.tfstate"
  region = "us-east-1"
  encrypt = true
}