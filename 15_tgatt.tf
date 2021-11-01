resource "aws_lb_target_group_attachment" "hamju_lbtg_att" {
  target_group_arn      = aws_lb_target_group.hamju_lbtg.arn
  target_id             = aws_instance.hamju_weba.id
  port                  = 80 
}