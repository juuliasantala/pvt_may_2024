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

resource "meraki_networks" "managed_networks" {
  for_each        = var.networks
  name            = each.value.name
  notes           = each.value.notes
  organization_id = var.organization_id
  product_types   = each.value.product_types
  tags            = each.value.tags
  time_zone       = each.value.time_zone
}

resource "meraki_networks_wireless_ssids" "my_splash_ssid" {
  for_each                      = resource.meraki_networks.managed_networks
  provider                      = meraki
  network_id                    = each.value.id
  number                        = 12
  auth_mode                     = "open"
  enabled                       = true
  name                          = "My terraform guest network"
  ip_assignment_mode            = "Bridge mode"
  default_vlan_id               = "300"
  splash_page                   = "Click-through splash page"
}
