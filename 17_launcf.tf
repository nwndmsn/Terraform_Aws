resource "aws_launch_configuration" "hamju_lacf" {
  name                 = "hamju-web"
  image_id             = aws_ami_from_instance.hamju_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.hamju_websg.id]
  key_name             = "hamju-key"
  user_data            =<<-EOF
                        #!/bin/bash
                        systemctl start httpd
                        systemctl enable httpd
                        EOF
  lifecycle {
    create_before_destroy  = true
  }
}