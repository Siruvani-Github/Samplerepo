# main.tf

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXKT7HXXUAGXYLZGU" 
  secret_key = "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"
}

resource "aws_instance" "awsserverinstance" {
  ami           = "ami-0912f71e06545ad88"  
  instance_type = "t2.micro"

  tags = {
    Name = "awsserverinstance"
  }
}
