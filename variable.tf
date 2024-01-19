variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}
variable "instances" {
  description = "number of ec2 instances"
  default = 5
}
