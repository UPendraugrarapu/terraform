variable "test" {
  default = "Hello terraform"
}

output "test" {
  value = var.test
}