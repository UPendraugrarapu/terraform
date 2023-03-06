resource "aws_route53_record" "record" {
  zone_id = "Z10169603GCPS6PZET2FX"
  name    = "${var.component}-dev.devopsb71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}
