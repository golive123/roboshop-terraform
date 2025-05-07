module "databases" {
  for_each                   = var.databases
  source                     = "./component"
  location                   = var.location
  name                       = each.key
  rg_name                    = var.rg_name
  storage_image_reference_id = var.storage_image_reference_id
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  zone_name                  = var.zone_name
}

module "applications" {
  depends_on                 = [ module.databases ]
  for_each                   = var.applications
  source                     = "./component"
  name                       = "each.key"
  location                   = var.location
  rg_name                    = var.rg_name
  storage_image_reference_id = var.storage_image_reference_id
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  zone_name                  = var.zone_name
}


