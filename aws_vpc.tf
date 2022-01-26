provider "aws" {
  region = var.region
}

resource "aws_vpc" "main1" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
      Name = "Main VPC 1"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.subnet_1_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_1a

  tags = {
      Name = "Subnet 1 | us-east-1a"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.subnet_2_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
      Name = "Subnet 2 | us-east-1b"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.subnet_3_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_1c

  tags = {
      Name = "Subnet 3 | us-east-1c"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main1.id

  tags = {
      Name = "Gateway Main"
  }
}

resource "aws_route_table" "r" {
    vpc_id = aws_vpc.main1.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
    }
    tags = {
        Name = "Route Table Main"
    }
}

resource "aws_route_table_association" "ra1" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "ra2" {
  subnet_id = aws_subnet.subnet2.id
  route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "ra3" {
  subnet_id = aws_subnet.subnet3.id
  route_table_id = aws_route_table.r.id
}