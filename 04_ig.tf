resource "aws_internet_gateway" "hamju_ig" {
  vpc_id = aws_vpc.hamju_vpc.id

  tags = {
    Name = "hamju-ig"
  }
}