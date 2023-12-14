variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}

resource "aws_instance" "demo-terraform-cloud" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
   Name = "terraform-server"
  }
}
