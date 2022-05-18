resource "aws_instance" "child_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
 
  tags = {
    "Name" = "${var.server_tag}"
  }
}