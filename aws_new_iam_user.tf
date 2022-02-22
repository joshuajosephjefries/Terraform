terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_iam_user" "test1" {
    name = "joey"
    
}