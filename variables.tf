variable "ip_configuration_subnet_id" {
  default = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet/subnets/default"
}

variable "zone_name" {
  default = "obiecard.com"
}

variable "location" {
  default = "UK West"
}

variable "rg_name" {
  default = "golive"
}

variable "storage_image_reference_id" {
  default = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/terraform-test-image"
}

variable "databases" {
  default = {
    mongodb = {}
    rabbitmq = {}
    mysql    = {}
    redis    = {}
  }
}

variable "applications" {
  default = {
    catalogue = {}
    cart = {}
    user = {}
    payment = {}
    shipping = {}
    frontend = {}
  }

 }