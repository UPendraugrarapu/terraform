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