terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5"
    }
  }

  required_version = ">= 1.2.0"
}

# configure aws provider
provider "aws" {
  region = "us-east-1"
}

# create ec2 instance
resource "aws_instance" "web_server" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro" # free tier

  tags = {
    Name = "DemoWebServer"
  }
}
