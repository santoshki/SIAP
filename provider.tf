terraform {
  required_providers {
    servicenow = {
      source  = "tylerhatton/servicenow"
      version = "0.11.0"
    }

    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.25"
    }
  }

  backend "pg" {}
}

provider "servicenow" {
  instance_url = var.servicenow_instance_url
  username     = var.servicenow_username
  password     = var.servicenow_password
}