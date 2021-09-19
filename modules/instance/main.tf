resource "aws_instance" "watest" {

  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name = var.public_key
  associate_public_ip_address = true

  #userdata
  user_data = <<EOF
#!/bin/bash
apt-get -y update
apt-get -y install nginx
service nginx start
EOF

  tags = {
    Name = var.name
  }
}