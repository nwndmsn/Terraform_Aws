# 가용영역 a의 Public Subnet
resource "aws_subnet" "hamju_puba" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone =   "ap-northeast-2a"

  tags = {
    Name = "hamju-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "hamju_pria" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone =   "ap-northeast-2a"
  tags = {
    Name = "hamju-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "hamju_pubc" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone =  "ap-northeast-2c"
  tags = {
    Name = "hamju-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "hamju_pric" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hamju-pric"
  }
}
  resource "aws_subnet" "hamju_pridba" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "hamju-pridba"
  }
}
resource "aws_subnet" "hamju_pridbc" {
  vpc_id            = aws_vpc.hamju_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "hamju-pridbc"
  }
}