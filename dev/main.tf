provider "aws" {
  region = var.region
}

resource "aws_vpc" "tfc_kthong_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "tfc_kthong_vpc"
  }
}

resource "aws_subnet" "tfc_kthong_subnet_A" {
  vpc_id = aws_vpc.tfc_kthong_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "tfc_kthong_subnet_A"
  }
}

resource "aws_subnet" "tfc_kthong_subnet_B" {
  vpc_id = aws_vpc.tfc_kthong_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2b"
  tags = {
    "Name" = "tfc_kthong_subnet_B"
  }
}

resource "aws_instance" "tfc_kthong_ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
}