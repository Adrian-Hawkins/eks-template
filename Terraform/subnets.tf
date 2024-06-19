resource "aws_subnet" "public-eu-west-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.0.0/18"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public-eu-west-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    "Owner"                     = "adrian.hawkins@bbd.co.za"
  }
}

resource "aws_subnet" "public-eu-west-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.64.0/18"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public-eu-west-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    "Owner"                     = "adrian.hawkins@bbd.co.za"
  }
}

resource "aws_subnet" "private-eu-west-1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.128.0/18"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "private-eu-west-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    "Owner"                     = "adrian.hawkins@bbd.co.za"
  }
}

resource "aws_subnet" "private-eu-west-1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.192.0/18"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "private-eu-west-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    "Owner"                     = "adrian.hawkins@bbd.co.za"
  }
}
