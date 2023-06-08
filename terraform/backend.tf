#terraform {
#  backend "s3" {
#    bucket         = "owolabi"
#    key            = "test/terraform.tfstate"
#    region         = "eu-west-2"
#    dynamodb_table = "terraform_state_locking"
#    encrypt        = true
#  }
#}

resource "aws_dynamodb_table" "aliu_db_table" {
  name         = "terraform_state_locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "aliu_s3" {
  bucket = "owolabi"

  tags = {
    Name        = "aliu_s3"
    description = "terraform state"
  }
}

resource "aws_s3_object" "aliu_object" {
  key    = "test"
  bucket = aws_s3_bucket.aliu_s3.id
}