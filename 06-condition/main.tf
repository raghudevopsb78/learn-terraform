# Condition in terraform is all about choosing the value
# cond ? true-val : fal-val

#resource "aws_instance" "test" {
#  ami           = "ami-05f020f5935e52dc4"
#  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
#}
#
#variable "instance_type" {}

variable "number" {}

output "number" {
  value = var.number > 10 ? "Number is greater than 10" : "Number is less than or equal to 10"
}


