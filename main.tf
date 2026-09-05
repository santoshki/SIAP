# module "servicenow_users" {
#   source = "./modules/user"
#
#   for_each = var.servicenow_users
#
#   user_name  = each.value.user_name
#   first_name = each.value.first_name
#   last_name  = each.value.last_name
#   email      = each.value.email
#   title      = each.value.title
#   active     = each.value.active
# }
module "table" {
  source = "./modules/table"
  table_label = "Security Finding"
}