resource "aws_ami_from_instance" "hamju_ami" {
  name                    = "hamju-ami"
  source_instance_id      = aws_instance.hamju_weba.id
  depends_on = [
    aws_instance.hamju_weba
  ]
}