admin_public_ip = "0.0.0.0/0"
ingress_ports = [{port:"22",desc:"SSH from anywhere"},{port:"80",desc:"http  from anywhere"},{port:"443",desc:"https  from anywhere"}]

deploy_public_key_name=""
region=""

  # using predefined ami 
ami=""
tag_wa = ""


vpc_data={
    cidr  = "10.0.0.0/16"
    public_subnets = ["10.0.1.0/24"]
    private_subnets = ["10.0.10.0/24"]
    a_z=["euc1-az1"]    
    }