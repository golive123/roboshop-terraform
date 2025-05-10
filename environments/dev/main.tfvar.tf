env = "dev"

ip_configuration_subnet_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet/subnets/default"
zone_name = "yourtherapist.in"
storage_image_reference_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/terraform-test-image"
network_security_group_id  = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/networkSecurityGroups/allow-all"
databases = {
    mongodb = {
        rgname = "ukwest-dev"
    }
    rabbitmq = {
        rgname = "ukwest-dev"
    }
    mysql    = {
        rgname = "ukwest-dev"
    }
    redis    = {
        rgname = "ukwest-dev"
    }
  }
applications = {
    frontend-robo = {
        rgname = "ukwest-dev"
    }
    catalogue = {
        rgname = "ukwest-dev"
    }
    user = {
        rgname = "ukwest-dev"
    }
    cart = {
        rgname = "ukwest-dev"
    }
    shipping = {
        rgname = "ukwest-dev"
    }
    payment = {
        rgname = "ukwest-dev"
    }
  }
rg_name  = {
    ukwest = {
        rg_location = "UK West"
    }
}

