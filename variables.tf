variable "aws_region" {
  description = "AWS Region for resources"
  default     = "us-west-2"
}

variable "backend_bucket" {
  description = "S3 bucket for storing Terraform state"
}

variable "backend_key" {
  description = "Key for the Terraform state file in S3"
}

variable "dynamodb_table" {
  description = "DynamoDB table for Terraform state locking"
}

variable "bucket_name" {
  description = "Name of the S3 bucket to create"
}

variable "bucket_acl" {
  description = "ACL for the S3 bucket"
  default     = "private"
}

variable "bucket_tag_name" {
  description = "Tag for the S3 bucket's Name"
}

variable "environment" {
  description = "Environment tag for the S3 bucket"
  default     = "Dev"
}

