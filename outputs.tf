output "security_finding_table_name" {
  value = servicenow_db_table.security_finding.name
}

output "security_finding_table_sys_id" {
  value = servicenow_db_table.security_finding.id
}