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
  count = 5
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.cidr_ranges[count.index]


  tags = {
    Name = var.tags[count.index]
  }
}


