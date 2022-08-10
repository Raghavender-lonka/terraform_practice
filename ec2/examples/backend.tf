terraform {
  backend "s3" {
    bucket = "demo-27"
    key    = "aws3.tfstate"
    region = "us-east-2"
    dynamodb_table = "demo-28"
  }
}
