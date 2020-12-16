# vpc resource 

resource "aws_vpc" "adnin_vpc" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = merge({
    "Name" = "Adnin_Datacenter"
  })
}

resource "aws_internet_gateway" "Adnin_ig" {
  vpc_id = aws_vpc.adnin_vpc.id

  tags = merge({
    "Name" = "Adnin_IG"
  })
}