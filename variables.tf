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

variable "db_host" {
  type = string
}

variable "db_user" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_port" {
  type      = string
  sensitive = true
}