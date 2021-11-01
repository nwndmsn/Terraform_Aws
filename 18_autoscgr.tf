resource "aws_placement_group" "hamju_pg" {
  name     = "hamju-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "hamju_atsg" {
  name                      = "hamju-atsg"
  min_size                  = 2
  max_size                  = 8
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.hamju_lacf.name
  vpc_zone_identifier       = [aws_subnet.hamju_puba.id,aws_subnet.hamju_pubc.id]
}