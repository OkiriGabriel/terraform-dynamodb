resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.db_name
  billing_mode   = var.billing_mode
#   read_capacity  = 20
#   write_capacity = 20
  hash_key       = var.hash_key 
#   range_key      = "Art"

  attribute {
    name = var.hash_key
    type = "S"
  }

#   attribute {
#     name = "Art"
#     type = "S"
#   }

#   attribute {
#     name = "Art"
#     type = "N"
#   }


  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }

  global_secondary_index {
    name               = "DataIndex"
    hash_key           = "Data"
    # range_key          = "Art"
    # write_capacity     = 10
    # read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}


resource "aws_dynamodb_table_item" "item" {
  table_name = aws_dynamodb_table.basic-dynamodb-table.name
  hash_key   = aws_dynamodb_table.basic-dynamodb-table.hash_key

  item = <<ITEM
{
  "Data": {"S": "Art"},
  "Name": {"S": "wwww"},
  "Image": {"S": "fejfevjenoenoveoe"},
  "Description": {"S": "hdhhdh jdjj ududu"}
}
ITEM
}
