output "user_id" {
  description = "ServiceNow user sys_id"
  value       = servicenow_user.this.id
}

output "user_name" {
  description = "ServiceNow username"
  value       = servicenow_user.this.user_name
}