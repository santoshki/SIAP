
resource "servicenow_user" "example" {
  user_name  = "jane.doe"
  first_name = "Jane"
  last_name  = "Doe"
  email      = "jane.doe@example.com"
  title      = "Software Engineer"
  active     = true
}

resource "servicenow_user" "example2" {
  user_name  = "jane2.doe2"
  first_name = "Janetwo"
  last_name  = "Doetwo"
  email      = "janetwo.doe@example.com"
  title      = "Software Engineer"
  active     = true
}

# data "servicenow_user" "test" {
#   user_name = "devopsuser"
# }
#
# output "servicenow_user" {
#   value = data.servicenow_user.test
# }

# data "servicenow_user" "test" {
#   user_name = "admin"
# }

# terraform {
#   required_providers {
#     servicenow = {
#       source  = "tylerhatton/servicenow"
#       version = "~> 0.10"
#     }
#   }
# }
#
# provider "servicenow" {
#   instance_url = "https://dev393323.service-now.com/"
#   username     = var.servicenow_username
#   password     = var.servicenow_password
# }
#
# resource "servicenow_role" "example" {
#   suffix      = "example_role"
#   description = "Example role managed by Terraform."
# }

resource "servicenow_record" "test" {
  table = "incident"

  fields = {
    short_description = "Terraform authentication test"
  }
}