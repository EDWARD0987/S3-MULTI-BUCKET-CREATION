#Variable Declaration
# because bucket names are global you will need to change them in your configuration
# Here also we have created a variable bucket_list with all the bucket names that we want to create.Then
# we specified for_each = toset(var.bucket_list)
#The for_each meta argument accepts a map or a set of strings, and creates an instance for each item in that map or set which is in our case s3 bucket.
# Since for_each only accepts map or set, we have converted our list to map using the built-in function toset.
# And then, we specified bucket = each.key to use the bucket name from the variable. In the case of a set each.key & each.value are the same. So ideally you can use any of them.


variable "bucket_list" {
  type = list
  default  = ["my-demo-bucket-1", "my-demo-bucket-2", "my-demo-bucket-3"]
}

