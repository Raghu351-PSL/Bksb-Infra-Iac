region            = "eu-west-2"
vpc_cidr          = "10.0.0.0/16"
vpc_name          = "main_vpc"
subnet_cidrs      = ["10.20.0.0/19", "10.20.32.0/19", "10.20.64.0/19", "10.20.96.0/19", "10.20.128.0/19", "10.20.160.0/19", "10.20.192.0/19"]
subnet_names      = ["Redis-subnet", "Staging-cluster-subnet", "Staging-databse-subnet", "Staging-Bastion-subnet", "Cloudflare-subnet", "Staging-management-cluster-subnet ", "staging-managament-Database-subnet"]
availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
