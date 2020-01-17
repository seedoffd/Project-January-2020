resource "aws_key_pair" "syed-bastion" { 
  key_name   = "syed-bastion" 
  public_key = file("~/.ssh/id_rsa.pub")
}