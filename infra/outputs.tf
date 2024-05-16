output "s3_bucket" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.dl.bucket
}


# #
# output "snowflake_svc_public_key" {
#   value = tls_private_key.svc_key.public_key_pem
# }

# output "snowflake_svc_private_key" {
#   value     = tls_private_key.svc_key.private_key_pem
#   sensitive = true
# }