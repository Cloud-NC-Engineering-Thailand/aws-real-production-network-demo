variable "tf_state_bucket_name" {
  description = "The name of the tf remote state bucket"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "network_zones" {
  description = "The availability zones for the network"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1c"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Boolean to enable or disable the creation of NAT Gateway"
  type        = bool
  default     = true
}

variable "one_nat_gateway_per_az" {
  description = "Boolean to create one NAT gateway per availability zone"
  type        = bool
  default     = true
}