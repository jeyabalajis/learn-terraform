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
  ami           = "ami-0246e967de77a4393"
  instance_type = var.instance_type

  tags = merge({
    Name = var.instance_name
  }, var.global_tags)
}