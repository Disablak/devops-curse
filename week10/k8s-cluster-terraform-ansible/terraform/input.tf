variable "instance_type" {
  default = "t2.small"
}

variable "ami_debian" {
  default = "ami-0779caf41f9ba54f0"  # Debian 12
}

variable "key" {
  default = "key-us-east-1"
}