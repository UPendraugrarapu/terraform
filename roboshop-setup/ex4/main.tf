module "ec2" {
    for_each = var.instances
  source = "./ec2"
  component = each.value["Name"]
  instance_type = each.value["type"]
}

variable "instances" {
  default = {
    catalogue =  {
        Name = "catalogue"
        type = "t3.micro"
    }
    user =  {
        Name = "user"
        type = "t3.micro"
    }
  }
}