module "s3" {
  #source = "git@github.com:quadri-olamilekan/Infra_Project.git//s3-module?ref=v1.2.0"
  source = "git::https://github.com/quadri-olamilekan/Infra_Project.git//s3-module?ref=v1.2.0"
  env    = "dev"
  region = "us-east-1"
}