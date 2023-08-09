provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc1" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "newvpc1"
  }
}
resource "aws_subnet" "web" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block


  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "app" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_block1


  tags = {
    Name = "subnet2"
  }
}


