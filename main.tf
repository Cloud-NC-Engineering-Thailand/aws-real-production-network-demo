module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.network_zones # ["us-east-1b", "us-east-1c", "us-east-1d"]
  private_subnets = var.private_subnet_cidrs
  public_subnets  = var.public_subnet_cidrs

  enable_nat_gateway = var.enable_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
}