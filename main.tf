module "frontend" {
  source                     = "./component"
  name                       = "frontend"
  location                   = var.location
  rg_name                    = var.rg_name
  storage_image_reference_id = var.storage_image_reference_id
  ip_configuration_subnet_id = var.ip_configuration_subnet_id
  zone_name                  = var.zone_name
}
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





