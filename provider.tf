provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "final" {
    bucket = "bhavana2001"
    
  
}
resource "aws_instance" "new" {

    ami = "ami-024e6efaf93d85776"
    instance_type = "t2.micro"
    key_name = "khajasir"
     
     tags = {
    Name = "Hiiia"
  }
}