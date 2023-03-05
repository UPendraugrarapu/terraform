data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "ec2" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-0901684fec359fab8"]

    tags = {
      Name = var.component
       }

}
resource "aws_route53_record" "record" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "${var.component}-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}