# Creating a resource for the Route Table Association!
resource "aws_route_table_association" "RT-IG-Association" {

 depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet1,
    aws_subnet.public_subnet2,
    aws_subnet.public_subnet3,
    aws_subnet.private_subnet1,
    aws_subnet.private_subnet2,
    aws_subnet.private_subnet3,
    aws_route_table.Public-Subnet-RT
  ]

# Public Subnets ID
  subnet_id      = aws_subnet.public_subnet1,
  subnet_id      = aws_subnet.public_subnet2,
  subnet_id      = aws_subnet.public_subnet3,

#  Route Table ID
  route_table_id = aws_route_table.Public-Subnet-RT.id
}
