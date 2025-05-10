variable "ip_configuration_subnet_id" {}
variable "zone_name" {}
variable "storage_image_reference_id" {}
variable "network_security_group_id" {}
variable "databases" {}
variable "applications" {}
variable "rg_name" {}
variable "rg_location" {}
variable "env" {}
variable "dns_record_rg_name" {}


# variable "ip_configuration_subnet_id" {
#   default = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet/subnets/default"
# }
#
# variable "zone_name" {
#   default = "yourtherapist.in"
# }
#
# ## added these details in data block,so in main.tf file change the location details as #location location=data.azurerm_resource_group.rg.location
# # and also remove information from component/main.tf and also remove location from variables section as well
# variable "location" {
#   default = "UK West"
# }
#
# variable "rg_name" {
#   default = "golive"
# }
#
# variable "storage_image_reference_id" {
#   default = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/terraform-test-image"
# }
#
# variable "network_security_group_id" {
#   default = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/networkSecurityGroups/allow-all"
# }
#
# variable "databases" {
#   default = {
#     mongodb = {}
#     rabbitmq = {}
#     mysql    = {}
#     redis    = {}
#   }
# }
#
# variable "applications" {
#   default = {
#     frontend-robo = {}
#     catalogue = {}
#     user = {}
#     cart = {}
#     shipping = {}
#     payment = {}
#   }
# }
#
#
