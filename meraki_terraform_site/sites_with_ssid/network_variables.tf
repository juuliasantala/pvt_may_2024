variable "organization_id" {
  type = string
  default = "706502191543754164"
}

variable "networks" {
    default = {
          main_office = {
            name = "Main Office"
            notes = "This was created from Terraform"
            product_types = ["appliance", "switch", "wireless"]
            tags = ["tag1", "tag2"]
            time_zone = "Europe/Zurich"
        },
          espoo_office = {
            name = "Espoo branch"
            notes = "This was created from Terraform"
            product_types = ["appliance", "switch", "wireless"]
            tags = ["tag1", "tag2"]
            time_zone = "Europe/Helsinki"
        },
          amsterdam_office = {
            name = "Amsterdam branch"
            notes = "This was created from Terraform"
            product_types = ["appliance", "switch", "wireless"]
            tags = ["tag1", "tag2"]
            time_zone = "Europe/Amsterdam"
        }
    }
}
