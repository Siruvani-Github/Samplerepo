
provider "aws" {
  region = "ap-south-1"
  }

resource "aws_instance" "awsserverinstance" {
  count = var.instances

  ami           = "ami-0912f71e06545ad88"  
  instance_type = var.instance_type
  
  tags = {
    Name = "Server ${count.index}"
  }
  lifecycle
  {    create_before_destroy = true  }
}

