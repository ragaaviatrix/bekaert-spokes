terraform {
  required_providers {
    aviatrix = {
      source = "aviatrixsystems/aviatrix"
    }
  }
  required_version = ">= 1.0"
}

provider "aviatrix" {
  controller_ip = var.controller_ip
  password      = var.password
  username      = "admin"
}

provider "aviatrix" {
  alias         = "china"
  username      = "admin"
  password      = var.china_password
  controller_ip = var.china_controller_ip
}