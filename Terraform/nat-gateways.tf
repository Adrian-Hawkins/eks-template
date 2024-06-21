resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public-eu-west-1a.id
  tags = {
    Name    = "NAT-1"
    "Owner" = "adrian.hawkins@bbd.co.za"
  }
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public-eu-west-1b.id
  tags = {
    Name    = "NAT-2"
    "Owner" = "adrian.hawkins@bbd.co.za"
  }
}