# module "frontend" {
#   source                     = "./component"
#   name                       = "frontend"
#   location                   = var.location
#   rg_name                    = var.rg_name
#   storage_image_reference_id = var.storage_image_reference_id
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   zone_name                  = var.zone_name
# }


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
  role_name                  = var.role_name[each.key]
}

# added in variables section and used for_each and for_key option syntax

# module "databases" {
#   for_each                   = var.databases
#   source                     = "./component"
#   location                   = var.location
#   name                       = each.key
#   rg_name                    = var.rg_name
#   storage_image_reference_id = var.storage_image_reference_id
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   zone_name                  = var.zone_name
# }
#
# module "applications" {
#   depends_on                 = [ module.databases ]
#   for_each                   = var.applications
#   source                     = "./component"
#   name                       = "each.key"
#   location                   = var.location
#   rg_name                    = var.rg_name
#   storage_image_reference_id = var.storage_image_reference_id
#   ip_configuration_subnet_id = var.ip_configuration_subnet_id
#   zone_name                  = var.zone_name
# }



#to test
 #  module "mongodb" {
 #   source                     = "./component"
 #   name                       = "mongodb"
 #    location                   = var.location
 #    rg_name                    = var.rg_name
 #    storage_image_reference_id = var.storage_image_reference_id
 #    ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #    zone_name                  = var.zone_name
 #  }
 #
 # module "redis" {
 #   source                     = "./component"
 #   name                       = "redis"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "catalogue" {
 #   source                     = "./component"
 #   name                       = "catalogue"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "mysql" {
 #   source                     = "./component"
 #   name                       = "mysql"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "user" {
 #   source                     = "./component"
 #   name                       = "user"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "cart" {
 #   source                     = "./component"
 #   name                       = "cart"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "rabbitmq" {
 #   source                     = "./component"
 #   name                       = "rabbitmq"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "shipping" {
 #   source                     = "./component"
 #   name                       = "shipping"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }
 #
 # module "payment" {
 #   source                     = "./component"
 #   name                       = "payment"
 #   location                   = var.location
 #   rg_name                    = var.rg_name
 #   storage_image_reference_id = var.storage_image_reference_id
 #   ip_configuration_subnet_id = var.ip_configuration_subnet_id
 #   zone_name                  = var.zone_name
 # }





