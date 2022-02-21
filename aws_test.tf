terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
    access_key = "Get_Access_key_from_account_security_credentials"
    secret_key = "Get_Secret_key_from_account_security_credentials"
}

resource "aws_iam_user" "test1" {
    name = "joey"
    
}