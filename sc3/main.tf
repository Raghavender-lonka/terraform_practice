resource "aws_s3_bucket" "b" {
  bucket = var.bucket_from_module #bucket name should be unique

  tags = {
    Name        = "demo27"
    Environment = "Dev"
  }
}

# var.bucket_from_module is the variable and its value is from the modules -> ec2 -> examples -> main.tf