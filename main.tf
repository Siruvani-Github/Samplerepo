# main.tf

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXKT7HXXUGK4SPNFE" 
  secret_key = "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"
}

resource "aws_instance" "awsserverinstance" {
  ami           = "ami-0912f71e06545ad88"  
  instance_type = "t2.micro"

  tags = {
    Name = "awsserverinstance"
  }
}
