#need to change CIDR block
resource "aws_subnet" "public_subnet1" {
  depends_on = [
    aws_vpc.custom
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.0.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1a"
  
  # Enabling automatic public IP assignment on instance launch!
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public_subnet2" {
  depends_on = [
    aws_vpc.custom
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.0.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1b"
  
  # Enabling automatic public IP assignment on instance launch!
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 2"
  }

resource "aws_subnet" "public_subnet3" {
  depends_on = [
    aws_vpc.custom
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.0.0/24"
  
  # Data Center of this subnet.
  availability_zone = "us-east-1c"
  
  # Enabling automatic public IP assignment on instance launch!
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 3"
  }
}
}
