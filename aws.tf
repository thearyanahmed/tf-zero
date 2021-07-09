terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

variable "subnet_id" {}

resource "aws_instance" "zero_by_ar9" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  
  subnet_id = var.subnet_id
  
  tags = {
    Name = "testing another app"
  }
}