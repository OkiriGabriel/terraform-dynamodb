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

resource "aws_dynamodb_table" "basic-dynamodb-table-2" {
  name           = "work"
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

resource "aws_dynamodb_table" "basic-dynamodb-table-3" {
  name           = "exhibition"
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

resource "aws_dynamodb_table" "basic-dynamodb-table-4" {
  name           = "artist"
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


resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.basic-dynamodb-table-2.name
  hash_key   = aws_dynamodb_table.basic-dynamodb-table-2.hash_key

  item = <<ITEM
{
  "Data": {"S": "Art"},
  "Name": {"S": "wwww"},
  "Image": {"S": "fejfevjenoenoveoe"},
  "Description": {"S": "hdhhdh jdjj ududu"}
}
ITEM
}

resource "aws_dynamodb_table_item" "item3" {
  table_name = aws_dynamodb_table.basic-dynamodb-table-3.name
  hash_key   = aws_dynamodb_table.basic-dynamodb-table-3.hash_key

  item = <<ITEM
{
  "Data": {"S": "Art"},
  "Name": {"S": "wwww"},
  "Image": {"S": "fejfevjenoenoveoe"},
  "Description": {"S": "hdhhdh jdjj ududu"}
}
ITEM
}


resource "aws_dynamodb_table_item" "item4" {
  table_name = aws_dynamodb_table.basic-dynamodb-table-4.name
  hash_key   = aws_dynamodb_table.basic-dynamodb-table-4.hash_key

  item = <<ITEM
{
  "Data": {"S": "Art"},
  "Name": {"S": "wwww"},
  "Image": {"S": "fejfevjenoenoveoe"},
  "Description": {"S": "hdhhdh jdjj ududu"}
}
ITEM
}
