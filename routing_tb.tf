resource "aws_route_table" "adnin_rt" {
  vpc_id = aws_vpc.adnin_vpc.id

  tags = merge({
    "Name" = "AdninRouteTable"
  })
}
resource "aws_route" "adnin_rt_igw" {
  route_table_id         = aws_route_table.adnin_rt.id
  gateway_id             = aws_internet_gateway.Adnin_ig.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "adnin_rt_assoc" {
  count          = length(var.pub_ip_range)
  subnet_id      = aws_subnet.adnin_sb_pb.*.id[count.index]
  route_table_id = aws_route_table.adnin_rt.id
}

# private

resource "aws_route_table" "adnin_private_rt" {
  vpc_id = aws_vpc.adnin_vpc.id

  tags = merge({
    "Name" = "AdninRoutePrivateTable"
  })
}
resource "aws_route" "adnin_rt_private_igw" {
  route_table_id         = aws_route_table.adnin_rt.id
  gateway_id             = aws_internet_gateway.Adnin_ig.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "adnin_rt_private_assoc" {
  count          = length(var.pub_ip_range)
  subnet_id      = aws_subnet.adnin_sb_pb.*.id[count.index]
  route_table_id = aws_route_table.adnin_rt.id
}