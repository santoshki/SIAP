output "security_finding_table_name" {
  description = "ServiceNow Security Finding table name"
  value       = servicenow_db_table.security_findings.name
}

output "security_finding_table_sys_id" {
  description = "ServiceNow Security Finding table sys_id"
  value       = servicenow_db_table.security_findings.id
}