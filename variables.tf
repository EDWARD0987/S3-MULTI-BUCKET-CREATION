# Variables

variable "account_naming_construct" {
    description = "Account naming construct"
    type = string
}

variable "bucket_suffixes" {
  description = "list of suffixes for bucket name"
  type = list(string)
  default = ["dev", "staging", "prod"]  #list of environment suffixes
}