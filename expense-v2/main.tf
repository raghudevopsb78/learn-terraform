resource "aws_instance" "frontend" {
  for_each               = var.instance_types
  ami                    = var.ami
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = each.key
  }
}

variable "ami" {
  default = "ami-05f020f5935e52dc4"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "security_groups" {
  default = ["sg-06b8bece9ed37b3dc"]
}

variable "instance_types" {
  default = {

    frontend = {
      instance_type = "t3.micro"
    }

    mysql = {
      instance_type = "t3.small"
    }

    backend = {
      instance_type = "t3.micro"
    }

  }
}