resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "instance_type" {
  
}
variable "create_instance" {
  
}
resource "aws_instance" "test" {
  count = toobol(var.create_instance ) ? 1: 0 
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}
