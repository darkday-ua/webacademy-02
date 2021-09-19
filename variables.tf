variable "admin_public_ip" {
  type = string
}
variable "ingress_ports" {
  type = list
}

variable "access_key_id" {
    type=string
  
}
variable "access_key" {
    type=string
  
}

variable "deploy_public_key_name" {
    type=string
  
}
variable "region" {
    type=string
  
}

variable "ami" {
    type=string  
}


variable "tag_wa" {
  type=string
}
variable "vpc_data"{
    type = object(
         {
    cidr  = string
    public_subnets = list(string)
    private_subnets = list(string)
    a_z=list(string)
    })
}