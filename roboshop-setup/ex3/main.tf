resource "aws_instance" "instances" {
    for_each = var.instances
    ami = "ami-0a017d8ceb274537d"
    instance_type = each.value["instance_type"]
    vpc_security_group_ids = ["sg-0901684fec359fab8"]
    tags = {
      Name = each.value["name"]
    }

}


variable "instances" {
  default = {
    catalogue = {
        name = "catalogue"
        instance_type = "t3.micro"
    }
    user = {
        name = "user"
        instance_type = "t3.small"
    }
  }
}
#to get ip address of catalogue and user
output "ec2" {
  value = [for k,v in aws_instance : "${k} - ${v.public_ip}"]
}