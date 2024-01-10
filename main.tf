# main.tf

provider "aws" {
  region = "ap-south-1"
  }

resource "aws_instance" "awsserverinstance" {
  ami           = "ami-0912f71e06545ad88"  
  instance_type = var.instance_type
  
tags = {
    Name = "awsserverinstance"
  }
}
