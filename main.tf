# main.tf

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXKT7HXXUAECI7A6X" 
  secret_key = "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"
}

resource "aws_instance" "awsserverinstance" {
  ami           = "ami-0912f71e06545ad88"  
  instance_type = "t2.micro"

  tags = {
    Name = "awsserverinstance"
  }
}
