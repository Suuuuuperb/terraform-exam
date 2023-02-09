provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-013218fccb68a90d4"
  instance_type = "t2.micro"
}