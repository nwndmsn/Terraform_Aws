resource "aws_autoscaling_attachment" "hamju_atatt" {
  autoscaling_group_name = aws_autoscaling_group.hamju_atsg.id
  alb_target_group_arn   = aws_lb_target_group.hamju_lbtg.arn
}