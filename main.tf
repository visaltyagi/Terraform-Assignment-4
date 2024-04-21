provider "aws" {
     region = "us-east-2"
     access_key = "AKIAQRH4ND34WNGRNWOP"
     secret_key = "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"
}
resource "aws_instance" "assignment-4" {
  ami      = "ami-0b4750268a88e78e0"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.assignment-4-subnet.id
  key_name = "Terraform"
  tags = {
    Name = "assignment-4"
  }
}

resource "aws_vpc" "assignment-4-vpc" {
        cidr_block="10.10.0.0/16"
        tags= {
        Name = "assignment-4-vpc"
        }
}

resource "aws_subnet" "assignment-4-subnet" {
         vpc_id=aws_vpc.assignment-4-vpc.id
         cidr_block="10.10.0.0/18"
         availability_zone="us-east-2a"
         tags = {
         Name = "assignment-4-subnet"
         }
}
