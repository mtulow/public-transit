## iam.tf | IAM

# # Snowflake IAM role
# resource "snowflake_role" "role" {
#   provider = snowflake.security_admin
#   name     = var.snowflake_svc_role
# }

# # Database Grant
# resource "snowflake_grant_privileges_to_account_role" "database_grant" {
#   provider          = snowflake.security_admin
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_role.role.name
#   on_account_object {
#     object_type = "DATABASE"
#     object_name = snowflake_database.db.name
#   }
# }

# # Schema Grant
# resource "snowflake_grant_privileges_to_account_role" "schema_grant" {
#   provider          = snowflake.security_admin
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_role.role.name
#   on_schema {
#     schema_name = "\"${snowflake_database.db.name}\".\"${snowflake_schema.schema.name}\""
#   }
#   depends_on = [ snowflake_schema.schema ]
# }

# # Warehouse Grant
# resource "snowflake_grant_privileges_to_account_role" "warehouse_grant" {
#   provider          = snowflake.security_admin
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_role.role.name
#   on_account_object {
#     object_type = "WAREHOUSE"
#     object_name = snowflake_warehouse.warehouse.name
#   }
# }

# resource "tls_private_key" "svc_key" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# # Service User
# resource "snowflake_user" "user" {
#     provider          = snowflake.security_admin
#     name              = var.snowflake_svc_user
#     default_warehouse = snowflake_warehouse.warehouse.name
#     default_role      = snowflake_role.role.name
#     default_namespace = "${snowflake_database.db.name}.${snowflake_schema.schema.name}"
#     rsa_public_key    = substr(tls_private_key.svc_key.public_key_pem, 27, 398)
#     depends_on = [ snowflake_schema.schema ]
# }

# # User Grant
# resource "snowflake_grant_privileges_to_account_role" "user_grant" {
#   provider          = snowflake.security_admin
#   privileges        = ["MONITOR"]
#   account_role_name = snowflake_role.role.name  
#   on_account_object {
#     object_type = "USER"
#     object_name = snowflake_user.user.name
#   }
# }

# # Grant Account Role
# resource "snowflake_grant_account_role" "grants" {
#   provider  = snowflake.security_admin
#   role_name = snowflake_role.role.name
#   user_name = snowflake_user.user.name
# }