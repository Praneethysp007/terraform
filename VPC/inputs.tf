variable "cidr_ranges" {
  type = list(string)
  default = [  "10.10.1.0/24","10.10.2.0/24","10.10.3.0/24","10.10.4.0/24","10.10.5.0/24" ]

  
}
variable "tags" {
  type = list(string)
  default = [ "web1","web2","web3","web4","web5" ]
  
  
}
