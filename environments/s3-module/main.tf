module "s3" {
  #source = "git@github.com:quadribello/Infra_Project.git//s3-module?ref=v1.2.0"
  source = "git::https://github.com/quadribello/Infra_Project.git//s3-module?ref=v1.2.0"
  env    = "dev"
}