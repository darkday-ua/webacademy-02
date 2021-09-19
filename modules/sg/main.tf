resource "aws_security_group" "wasg" {
  name        = var.name
  description = var.name
  vpc_id      = var.vpc_id 
  
  dynamic "ingress" {   
    for_each = var.sec_data
    content{
      description = "${ingress.value.desc}"
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = [var.admin_public_ip]
    } 
  }  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}