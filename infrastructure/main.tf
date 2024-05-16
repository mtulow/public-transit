terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
}

provider "aws" {
  # Configuration options
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}