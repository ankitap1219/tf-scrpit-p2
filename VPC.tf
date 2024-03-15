# Creating VPC
provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    instance_tenancy = "default"
    tags = {
        Name = "VPC"
    }
}  