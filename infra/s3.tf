resource "aws_s3_bucket" "dl" {
  bucket_prefix = "public-transit-"

  tags = {
    prefix        = "public-transit"
    Environment   = var.environment
  }
}

resource "aws_s3_bucket_ownership_controls" "dl" {
  bucket = aws_s3_bucket.dl.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "dl" {
  depends_on = [aws_s3_bucket_ownership_controls.dl]

  bucket = aws_s3_bucket.dl.id
  acl    = "private"
}