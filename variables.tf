variable "servicenow_users" {
  description = "ServiceNow users to create"

  type = map(object({
    user_name  = string
    first_name = string
    last_name  = string
    email      = string
    title      = string
    active     = bool
  }))
}
variable "servicenow_instance_url" {
  description = "ServiceNow instance URL"
  type        = string
}

variable "servicenow_username" {
  description = "ServiceNow username"
  type        = string
  sensitive   = true
}

variable "servicenow_password" {
  description = "ServiceNow password"
  type        = string
  sensitive   = true
}