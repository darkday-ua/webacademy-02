### Runing things

This appliance creates Amazon VPC, Amazon EC2 instance with simple nginx server using Terraform
Supposed that S3-bucket for backend already created

* **terraform init**: Supposed that *aws configure* already done
* **private.tfvars**: fill all necessary vars by template from public.tfvars
* **./run.sh**: run script with option *debug* if need
* **./destroy.sh**: run script to destroy prev created config

(c) Ivanko Pablo as a webacademy lab