provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-20241119"
    key            = "cicd/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "acs-7th" # 고유한 버킷 이름 생성
  acl    = "private"

  tags = {
    Name        = var.bucket_tag_name
    Environment = var.environment
  }
}

