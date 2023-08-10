resource "aws_subnet" "web" {
  count      = 3
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.aws_subnet1[count.index]
  tags = {
    Name = var.aws_tags[count.index]
  }
  depends_on = [aws_vpc.myvpc]
}


resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "myvpc"
  }

}
resource "aws_instance" "ec2" { 
  count         = 2
  ami           = var.aws_types[count.index]
  instance_type = var.instance_types[count.index]
  key_name      = "new"
  tags = {
    Name = var.instance_names[count.index]
  }

}
