terraform {
  required_providers {
    sql = {
      source = "paultyng/sql"
      version = "~> 0.5.0"
    }
  }

  required_version = ">= 1.0.2"
}