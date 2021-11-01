data "aws_ami" "amzn" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "hamju_weba" {
  ami                    = "ami-0e4a9ad2eb120e054"                             #data.aws_ami.amzn.id
  instance_type          = "t2.micro"
  key_name               = "hamju-key"
  vpc_security_group_ids = [aws_security_group.hamju_websg.id]
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.0.11"
  subnet_id              = aws_subnet.hamju_puba.id
  user_data              = file("./install_seoul.sh") 

  tags = {
    Name = "hamju-weba"
  }
}
resource "aws_eip" "hamju_web_eip" {
  vpc = true
  instance                    = aws_instance.hamju_weba.id
  associate_with_private_ip   = "10.0.0.11"
  depends_on                  = [aws_internet_gateway.hamju_ig]
}