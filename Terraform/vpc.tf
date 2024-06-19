# resource "aws_default_vpc" "default_vpc" {
#   tags = {
#     Name = "default_vpc"
#   }
# }


resource "aws_vpc" "main" {
  cidr_block                       = "192.168.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false
}