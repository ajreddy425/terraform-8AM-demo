// creting subnet

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr

  tags = {
    Name = "my-subnet-01-${local.ws}"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr

  tags = {
    Name = "my-subnet-02-${local.ws}"
  }
}


// variable 

variable "subnet1_cidr" {
  default = "10.0.0.0/24"
}

variable "subnet2_cidr" {
  default = "10.0.1.0/24"
}