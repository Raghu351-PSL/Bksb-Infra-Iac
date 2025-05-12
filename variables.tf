variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.20.0.0/19", "10.20.32.0/19", "10.20.64.0/19", "10.20.96.0/19", "10.20.128.0/19", "10.20.160.0/19", "10.20.192.0/19"]
}

variable "subnet_names" {
  description = "A list of names for the subnets"
  type        = list(string)
  default     = ["Redis-subnet", "Staging-cluster-subnet", "Staging-databse-subnet", "Staging-Bastion-subnet", "Cloudflare-subnet", "Staging-management-cluster-subnet", "staging-managament-Database-subnet"]
}

variable "availability_zones" {
  description = "A list of availability zones to distribute the subnets across"
  type        = list(string)
  default     = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "instance_profile_name"{
    description = "instance profile name"
    default     = "IAC-Terraform"
}
