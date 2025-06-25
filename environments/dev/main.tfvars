env = "dev"
ip_configuration_subnet_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet/subnets/default"
zone_name = "yourtherapist.in"
dns_record_rg_name = "golive"
#storage_image_reference_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/terraform-test-image"
storage_image_reference_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/vault-image"
network_security_group_id  = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/networkSecurityGroups/allow-all"
databases = {
  mongodb = {
    rgname = "ukwest"
  }
#   rabbitmq = {
#     rgname = "ukwest"
#   }
#   mysql    = {
#     rgname = "ukwest"
#   }
#   redis    = {
#     rgname = "ukwest"
#   }
}
#applications = {
    # frontend-robo = {
    #     rgname = "ukwest"
    # }
    # catalogue = {
    #      rgname = "ukwest"
    #}
    # user = {
    #     rgname = "ukwest"
    # }
    # cart = {
    #     rgname = "ukwest"
    # }
    # shipping = {
    #     rgname = "ukwest"
    # }
    # payment = {
    #     rgname = "ukwest"
    # }
  #}
  rg_name  = {
    ukwest = {
        location = "UK West"
    }
}

  aks = {
    main-dev = {
     rgname = "ukwest"
        default_node_pool = {
        nodes   = 1
        vm_size = "standard_a2_v2"
      }
      app_node_pool = {
        one = {
          max_count            = 10
          min_count            = 2
          vm_size              = "standard_a2_v2"
          auto_scaling_enabled = true
          node_labels = {
            "project/name" = "roboshop"
          }
        }
      }

    }
  }
