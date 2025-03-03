#Variable Declaration
# because bucket names are global you will need to change them in your configuratio

variable "bucket_list" {
  type = list
  default  = ["my-demo-bucket-1", "my-demo-bucket-2", "my-demo-bucket-3"]
}

