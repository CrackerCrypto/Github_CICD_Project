# aws region as variable
#
variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map
  default = {
    us-east-1 = "ami-0c7217cdde317cfec"
    us-east-2 = "ami-03657b56516ab7912"
  }
}

variable "USER" {
  default = "ubuntu"
}
