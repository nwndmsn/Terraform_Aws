resource "aws_route_table" "hamju_ngart_a" {
  vpc_id  =  aws_vpc.hamju_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.hamju_nga_a.id
  }
  tags  = {
    Name  = "hamju-nga-rta"
  }
}

resource "aws_route_table" "hamju_ngart_c" {
  vpc_id  =  aws_vpc.hamju_vpc.id
 
  route {
    cidr_block  = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.hamju_nga_c.id
  }
  tags  = {
    Name  = "hamju-nga-rtc"
  }
}