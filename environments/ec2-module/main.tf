module "ec2_instance" {
  # source = "git@github.com:BellyBista/Infra_Project.git//ec2-module?ref=v1.4.2"
  source           = "git::https://github.com/BellyBista/Infra_Project.git//ec2-module?ref=v1.4.3"
  region           = "us-east-1"
  instance_count   = 1
  vpc_id           = data.terraform_remote_state.vpc.outputs.vpc_id
  my_instance_type = "t2.micro"
  name             = "dev_ec2"
  my_key           = "demo32"
}
