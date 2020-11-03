variable "region" {
  default = "us-east-2"
}
variable "environment" {
  default = "Development"
}
variable "vpc_cidr" {
  description = "VPC cidr block"
  default = "10.0.0.0/16"
}
variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 cidr block"
    default = "10.0.1.0/24"
}

variable "keyname" {
  
}

