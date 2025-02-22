terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws-78s-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "daws-78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}