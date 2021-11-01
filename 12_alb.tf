# Application LoadBalancer Deploy
resource "aws_lb" "hamju_lb" {
  name                   = "hamju-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        =  [aws_security_group.hamju_websg.id]
  subnets                =  [aws_subnet.hamju_puba.id,aws_subnet.hamju_pubc.id]
  
  tags = {
    Name  = "hamju-alb"
  }
}