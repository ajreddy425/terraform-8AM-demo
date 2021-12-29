resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc-${local.ws}"
  }
}


// variables


variable "vpc_cidr" {
  description = "enter your cidr block for your vpc"
  default     = "10.0.0.0/16"
}

# variable "my_vpc_tag" {
#   description = "choose tags for your vpc as your choice"
#   default     = "my-vpc-terraform"
# }