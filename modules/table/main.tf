resource "servicenow_db_table" "security_findings" {
  label     = var.table_label
  user_role = ""

  access               = "package_private"
  alter_access         = false
  configuration_access = true
  create_access        = true
  delete_access        = true
  extendable           = false
  live_feed            = false
  read_access          = true
  web_service_access   = true
}

resource "servicenow_dictionary" "finding_id" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_finding_id"
  column_label  = "Finding ID"
  internal_type = "string"
  max_length    = 100
  mandatory     = true
  unique        = true
  active        = true
  display       = true
}

resource "servicenow_dictionary" "source" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_source"
  column_label  = "Source"
  internal_type = "string"
  max_length    = 100
  mandatory     = true
  active        = true
}

resource "servicenow_dictionary" "severity" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_severity"
  column_label  = "Severity"
  internal_type = "string"
  max_length    = 20
  mandatory     = true
  active        = true
}

resource "servicenow_dictionary" "finding_type" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_finding_type"
  column_label  = "Finding Type"
  internal_type = "string"
  max_length    = 100
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "description" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_description"
  column_label  = "Description"
  internal_type = "string"
  max_length    = 4000
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "asset" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_asset"
  column_label  = "Asset"
  internal_type = "string"
  max_length    = 255
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "vulnerability" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_vulnerability"
  column_label  = "Vulnerability"
  internal_type = "string"
  max_length    = 255
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "status" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_status"
  column_label  = "Status"
  internal_type = "string"
  max_length    = 50
  mandatory     = true
  default_value = "New"
  active        = true
}

resource "servicenow_dictionary" "owner" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_owner"
  column_label  = "Owner"
  internal_type = "string"
  max_length    = 255
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "first_seen" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_first_seen"
  column_label  = "First Seen"
  internal_type = "glide_date_time"
  mandatory     = false
  active        = true
}

resource "servicenow_dictionary" "last_seen" {
  name          = servicenow_db_table.security_findings.name
  element       = "u_last_seen"
  column_label  = "Last Seen"
  internal_type = "glide_date_time"
  mandatory     = false
  active        = true
}