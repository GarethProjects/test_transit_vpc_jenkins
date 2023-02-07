terraform {
  backend "s3" {
    bucket = "gl-back-end-tf-statefile-2010"
    key = "main"
    region = "us-east-2"
    dynamodb_table = "terraform-state-backend-table"
  }
}
