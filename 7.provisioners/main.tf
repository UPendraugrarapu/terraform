resource "aws_instance" "ec2" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "demo"
    }
  

#remote-exec-in remote machine
#local-exec- in local machine

   provisioner "remote-exec" {
    connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }
    
   }

   inline = [
    "echo Hi"
   ]

   }
