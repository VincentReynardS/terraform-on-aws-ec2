# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "vincent"
  region  = "ap-southeast-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-06018068a18569ff2" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
