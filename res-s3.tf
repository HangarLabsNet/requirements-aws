resource "aws_s3_bucket" "packages_bucket" {
  bucket = var.packages_bucket_name
}

resource "aws_s3_bucket_lifecycle_configuration" "packages_bucket_lifecycle" {
  bucket = aws_s3_bucket.packages_bucket.id

  rule {
    id     = "1 day expiration"
    status = "Enabled"
    expiration {
      days = 1
    }
  }
}
