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


# ## using the count block we will omit this and use the for_each
# #Resource to create s3 bucket
# resource "aws_s3_bucket" "versioning_bucket" {
#   count = 5
#   bucket = "demo-ck-18th"
# }



#Resource to create s3 bucket
# as you can see the count parameter takes the length of the list
resource "aws_s3_bucket" "demo_bucket" {
  count = length(var.bucket_list)
  bucket = var.bucket_list[count.index]
}