#! /bin/bash
if [ $# -ne 0 ] 
then
    if [ "$1" == "debug" ]
    then
        export TF_LOG="DEBUG"
    fi
fi
terraform plan -var-file="private.tfvars"
terraform apply -var-file="private.tfvars"