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
}

provider "servicenow" {
  instance_url = "https://dev393323.service-now.com/"
  username     = var.servicenow_username
  password     = var.servicenow_password
}

provider "postgresql" {
  host     = var.db_host
  port     = var.db_port
  database = "postgres"
  username = var.db_user
  password = var.db_password
  sslmode  = "require"
}