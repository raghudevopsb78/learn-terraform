terraform {
  backend "s3" {
    bucket = "b78-tf-states"
    key    = "test1/${var.env}/state"
    region = "us-east-1"
  }
}

output "env" {
  value = var.env
}

variable "env" {}
