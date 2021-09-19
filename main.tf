module "vpc" {
  source = "./modules/vpc"
  vpc_data = var.vpc_data
  name = var.tag_wa
}

module "sg" {
  source = "./modules/sg"
  sec_data = var.ingress_ports
  name = var.tag_wa
  admin_public_ip = var.admin_public_ip
  vpc_id = module.vpc.vpc_id
  depends_on = [
    module.vpc
  ]
}


module "instance" {
 source = "./modules/instance"
  ami                    = var.ami
  subnet_id              = module.vpc.public_subnets_id[0]
  sg_id = module.sg.sg_id
  public_key = var.deploy_public_key_name
  name= var.tag_wa
  
}