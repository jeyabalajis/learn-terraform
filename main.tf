terraform {
  backend "remote" {
    organization = "jeyasandbox"
    workspaces {
      name = "example-workspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}