module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "~> 3.7.0"
  name = var.name
  cidr = var.vpc_data.cidr
   
  azs             = var.vpc_data.a_z
  public_subnets  = var.vpc_data.public_subnets
  private_subnets = var.vpc_data.private_subnets
  

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Name = var.name    
  }
}