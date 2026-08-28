terraform {
  required_providers {
    servicenow = {
      source  = "tylerhatton/servicenow"
      version = "0.11.0"
    }
  }
}

provider "servicenow" {
  instance_url = "https://dev393323.service-now.com/"
  username     = var.servicenow_username
  password     = var.servicenow_password
}