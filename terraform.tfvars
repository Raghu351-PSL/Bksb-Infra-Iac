region            = "ap-southeast-2"
vpc_cidr          = "10.1.0.0/16"
vpc_name          = "main_vpc"
subnet_cidrs      = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24", "10.1.7.0/24"]
subnet_names      = ["Redis-subnet", "Staging-cluster-subnet", "Staging-databse-subnet", "Staging-Bastion-subnet", "Cloudflare-subnet", "Staging-management-cluster-subnet ", "staging-managament-Database-subnet"]
availability_zones = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]

 