variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "aws_region" {
  description = "aws region"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "Instance Type"
  type = string
  default = "t2.micro"
}

variable "instance_count" {
  description = "Instance Count"
  type = number
  default = 2
}

variable "available_public_subnet_cidr_blocks" {
  description = "Available Public Subnet CIDR Blocks"
  type = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}