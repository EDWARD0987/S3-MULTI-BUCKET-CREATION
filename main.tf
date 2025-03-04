terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}





#Resource to create s3 bucket
# as you can see the count parameter takes the length of the list
resource "aws_s3_bucket" "my_buckets" {
  count = length(var.bucket_suffixes)
  bucket = "${var.account_naming_construct}-${var.bucket_suffixes[count.index]}-bucket"
}

output "bucket_names" {
  value = [for bucket in aws_s3_bucket.my_buckets : bucket.bucket]
}