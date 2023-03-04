resource "aws_instance" "frontend" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "frontend"
       }

}
resource "aws_route53_record" "frontend" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "frontend-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "cart"
    }
  
}
resource "aws_route53_record" "cart" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "cart-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mongodb" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "mongodb"
    }
  
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "mongodb-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "catalogue"
    }
  
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "catalogue-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "user"
    }
  
}
resource "aws_route53_record" "user" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "user-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "shipping"
    }
  
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "shipping-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "redis" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "redis"
    }
  
}
resource "aws_route53_record" "redis" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "redi-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "payment" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "payment"
    }
  
}
resource "aws_route53_record" "payment" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "payment-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "rabbitmq" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "rabbitmq"
    }
  
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "rabbitmq-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "mysql" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "mysql"
    }
  
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "mysql-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "dispatch" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = "dispatch"
    }
  
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "dispatch-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
