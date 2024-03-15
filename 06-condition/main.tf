# Condition in terraform is all about choosing the value
# cond ? true-val : fal-val

resource "aws_instance" "test" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}

