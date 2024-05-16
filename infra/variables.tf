# Project Variables
variable "environment" {
  description = "The environment to deploy resources"
  type        = string
  default     = "dev"
}

## AWS Variables
# Region
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# Account ID
variable "aws_account_id" {
  description = "The AWS account ID"
  type        = string
}

# Credentials
variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
}
variable "aws_secret_key" {
  description = "The AWS secret key"
  type        = string
  sensitive   = true
}

## Snowflake Variables
# Database
variable "snowflake_db_name" {
  description   = "The Snowflake database name."
  type          = string
  default       = "public_transit"
}

# Compute Warehouse
variable "snowflake_wh_name" {
  description = "The Snowflake warehouse name."
  type        = string
  default     = "compute_wh"
}
variable "snowflake_wh_size" {
  description = "The Snowflake warehouse size."
  type        = string
  default     = "XSMALL"
}

# Service Role
variable "snowflake_svc_role" {
  description = "The Snowflake service role"
  type        = string
  default     = "TF_SVC_ROLE"
}

# Service User
variable "snowflake_svc_user" {
  description = "The Snowflake username."
  type = string
  default = "TF_SVC_USER"
}

