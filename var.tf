variable "db_name" {
   default = "Artcolonygallery"
   description = "dynamodb name"
}

variable "billing_mode" {
  default = "PAY_PER_REQUEST"
}

variable "hash_key" {
   default =  "Data"
}