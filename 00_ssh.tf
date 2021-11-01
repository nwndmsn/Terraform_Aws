resource "aws_key_pair" "hamju_key" {
  key_name        ="hamju-key"
  public_key      = file("../../../.ssh/id_rsa.pub")  
}