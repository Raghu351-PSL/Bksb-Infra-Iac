provider "aws" {
  region = var.region
}
data "aws_iam_role" "IAM_role" {
  name = "IAC-Terraform"
}
data "aws_vpcs" "existing" {
  filter {
   name   = "tag:Name"
   values = [var.vpc_name] 
  }
}
resource "aws_vpc" "main-vpc" {
  count      = length(data.aws_vpcs.existing.ids) == 0 ? 1 : 0
  cidr_block = var.vpc_cidr
  tags = {
   Name = var.vpc_name
  }

}
locals {
  vpc_id = length(data.aws_vpcs.existing.ids) > 0 ? data.aws_vpcs.existing.ids[0] : aws_vpc.main-vpc[0].id
}
resource "aws_subnet" "subnet" {
  count             = length(var.subnet_cidrs)
  vpc_id            = local.vpc_id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index % length(var.availability_zones))
  tags = {
   Name = var.subnet_names[count.index]
  }
}
 