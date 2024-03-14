# Declare the variable with value

variable "x" {
  default = 100
}

# Declare variable without value
#variable "y" {}


# Print variable
output "x" {
  value = var.x
}

