module "resource-group" {
  for_each = var.rg_name
  source = "modules/resource-group"
  name   = "${each.key}-${var.env}"
  location= each.value["location"]
}

module "databases" {
  for_each                   = var.databases
  source                     = "./modules/vm"
  name                       = each.key
  rg_name                    = module.resource-group[each.value["rgname"]].name
  location                   = module.resource-group[each.value["rgname"]].location
  storage_image_reference_id = var.storage_image_reference_id
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  network_security_group_id  = var.network_security_group_id
  zone_name                  = var.zone_name
}

# module "applications" {
#   depends_on                 = [ module.databases ]
#   for_each                   = var.applications
#   source                     = "./modules/vm"
#   name                       = each.key
#   location                   = var.location
#   rg_name                    = var.rg_name
#   storage_image_reference_id = var.storage_image_reference_id
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   network_security_group_id  =  var.network_security_group_id
#   zone_name                  = var.zone_name
# }




