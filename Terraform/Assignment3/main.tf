terraform{
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "6.21.0"
        }
    }
}
provider "aws" {
    region = "eu-west-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "DEPI_bucket12345" 
    access_control = "private"

    tags = {
        Name = "terrform_bucket"
    }
}

resource "aws_security_group" "my_sg" {
  name        = "my-security-group"
  description = "Allow all inbound traffic from 192.168.120.0/24"
  vpc_id      = aws_vpc.default.id   

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"              # -1 means all protocols
    cidr_blocks = ["192.168.120.0/24"]
  }

  tags = {
    Name = "my-security-group"
  }
}
