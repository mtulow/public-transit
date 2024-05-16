# provider "snowflake" {
#   role = "SYSADMIN"
# }

provider "aws" {
  # Configuration options
  region      = var.aws_region
  access_key  = var.aws_access_key
  secret_key  = var.aws_secret_key
}