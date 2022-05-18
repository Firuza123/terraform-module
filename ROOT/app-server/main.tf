module "app-vpc" {
  source = "../../CHILD/VPC"
  vpc_cidr = "20.0.0.0/16"
  pub_cidr = "20.0.1.0/24"
  prv_cidr = "20.0.2.0/24"
  tag = "app"
}

module "app-server" {
  source = "git::https://github.com/Firuza123/terraform-module.git//CHILD/EC2"
  subnet_id = module.app-vpc.private_subnet_id
}