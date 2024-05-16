# # Database
# resource "snowflake_database" "db" {
#   name = var.snowflake_db_name
# }

# # Schema
# resource "snowflake_schema" "schema" {
#   database   = snowflake_database.db.name
#   name       = var.environment
#   is_managed = false
# }
