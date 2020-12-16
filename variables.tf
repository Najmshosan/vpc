variable "pub_ip_range" {
  description = "Specifies sb range"
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]

}

variable "pub_azs" {
  description = "Specify Azs"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}


#private
variable "private_ip_range" {
  description = "Specifies sb range"
  default     = ["192.168.11.0/24", "192.168.12.0/24", "192.168.13.0/24"]

}

variable "private_azs" {
  description = "Specify Private Azs"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}