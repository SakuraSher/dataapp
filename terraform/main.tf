terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
    bucket ="mytestbucket123"
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
        }
    }
    
    tags ={
        Name = "botosample"
    }
}
