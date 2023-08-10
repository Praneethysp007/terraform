variable "aws_subnet1" {
  type    = list(string)
  default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]

}
variable "aws_tags" {
  type    = list(string)
  default = ["web1", "web2", "web3"]

}
variable "aws_types" {
  type    = list(string)
  default = ["ami-026ebd4cfe2c043b2", "ami-053b0d53c279acc90"]

}
variable "instance_names" {
  type    = list(string)
  default = ["redhat", "ubuntu"]

}
variable "instance_types" {
  type    = list(string)
  default = ["t2.micro", "t2.medium"]

}