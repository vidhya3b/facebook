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

resource "aws_s3_bucket" "big-basket" {
	bucket = "my-big-basket-class10$#"
}
