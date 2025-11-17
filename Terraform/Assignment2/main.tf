terraform {
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

resource "aws_iam_user" "depi_user" {
  name = "depi_user"

  tags = {
    Name = "depi-user"
  }
}

resource "aws_eip" "nat" {

  tags = {
    Name = "example-nat-eip"
  }
}

 
resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.my_subnet.id

  tags = {
    Name = "example-nat-gateway"
  }
}

resource "aws_vpc" "default" {
  cidr_block = "172.31.0.0/16"
  tags = {
    Name = "Default"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = "172.31.32.0/20"  
  availability_zone = "eu-west-1b"
  tags = {
    Name = "my-subnet"
  }
}

output Elastic_IP {
    value = aws_eip.nat.public_ip
    }
output NAT_Gateway_ID {
    value = aws_nat_gateway.example.id
    }
output depi_user_arn {
    value = aws_iam_user.depi_user.arn
    }    

