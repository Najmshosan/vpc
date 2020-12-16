# I nam creting my subnet

resource "aws_subnet" "adnin_sb_pb" {
  count                   = length(var.pub_ip_range)
  vpc_id                  = aws_vpc.adnin_vpc.id
  cidr_block              = var.pub_ip_range[count.index]
  availability_zone       = var.pub_azs[count.index]
  map_public_ip_on_launch = true

  tags = merge({
    "Name" = "AninPublicSubnet"

  })
}


# I nam creting my private subnet

resource "aws_subnet" "adnin_sb_private" {
  count             = length(var.private_ip_range)
  vpc_id            = aws_vpc.adnin_vpc.id
  cidr_block        = var.private_ip_range[count.index]
  availability_zone = var.private_azs[count.index]
   map_public_ip_on_launch = false

  tags = merge({
    "Name" = "AninPrivateSubnet"

  })
}


