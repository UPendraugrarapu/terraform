resource "aws_instance" "frontend" {
    count = length(var.instances)
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]
  

}

variable "instances" {
  default = ["cart","user","catalogue","rabbitmq","redis"]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}