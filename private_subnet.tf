resource "aws_subnet" "private_subnet1" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet1,
    aws_subnet.public_subnet2,
    aws_subnet.public_subnet3,
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.3.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1d"
  
  tags = {
    Name = "Private Subnet 1"
  }

resource "aws_subnet" "private_subnet2" {
   depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet1,
    aws_subnet.public_subnet2,
    aws_subnet.public_subnet3,
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.4.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1e"
  
  tags = {
    Name = "Private Subnet 2"
  }
}

resource "aws_subnet" "private_subnet3" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet1,
    aws_subnet.public_subnet2,
    aws_subnet.public_subnet3,
  ]
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.5.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1f"
  
  tags = {
    Name = "Private Subnet 3"
  }
}
