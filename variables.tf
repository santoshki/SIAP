variable "servicenow_username" {
  description = "ServiceNow username used for Basic Authentication"
  type        = string
  sensitive   = true
}

variable "servicenow_password" {
  description = "ServiceNow password used for Basic Authentication"
  type        = string
  sensitive   = true
}