provider "aws" {
  region = var.region
}

data "aws_iam_role" "IAM_role" {
  name = "IAC-Terraform" 
}


resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}
resource "aws_subnet" "subnet" {
  count           = length(var.subnet_cidrs)
  vpc_id          = aws_vpc.main-vpc.id
  cidr_block      = var.subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index % length(var.availability_zones))
  tags = {
    Name = "${var.subnet_names[count.index]}"
  }
}

 