terraform {
    source = "git@github.com:miguelgtricas/Terraform-Modules.git//vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    region          = "eu-west-1"
    vpc_cidr_block  = "192.168.100.0/24"
    domain          = "whiterabbit.com"
    vpc_name        = "production-whiterabbit"
    subnets_count   = 1
}