resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Owner" = "adrian.hawkins@bbd.co.za"
  }
}