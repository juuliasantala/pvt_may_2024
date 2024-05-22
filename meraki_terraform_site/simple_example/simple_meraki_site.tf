terraform {
  required_providers {
    meraki = {
      source = "cisco-open/meraki"
      version = "0.1.0-alpha"
    }
  }
}

provider "meraki" {
  # Configuration options
}

resource "meraki_networks" "main_office" {

  name            = "Main Terraform Office"
  notes           = "This was created from Terraform"
  organization_id = var.organization_id
  product_types   = ["appliance", "switch", "wireless"]
  tags            = ["guest", "demo"]
  time_zone       = "Europe/Zurich"
}

variable "organization_id" {
  type = string
  default = "706502191543754164"
}
