  
resource "aws_instance" "dev" {
  count = var.count_instance
  ami             = "${data.aws_ami.centos.image_id}"
  instance_type   = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name = aws_key_pair.syed-bastion.key_name
  security_groups = ["syed-bastion"]
   provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = var.user
      private_key = file(var.ssh_key_location)
      }
      inline = [
        "sudo yum install epel-release -y",
        "sudo yum install r1soft -y",
        ]
      }

    lifecycle{
    prevent_destroy = false
  }
  tags = {
    Name = "dev${count.index +1}"
  }
}