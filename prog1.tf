terraform {
    required_version = "~> 1.0.0"
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
	profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "Raminfra" {
	ami = "ami-04902260ca3d33422"
	instance_type = "t2.micro"
	tags = {
        	Name = "Terraform-Server"
 	}
} 
