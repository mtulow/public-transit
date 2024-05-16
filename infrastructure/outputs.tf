output "s3_bucket" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.dl.bucket
}