provider "azurerm" {
  features {}
  subscription_id = "a9bc3c93-b459-4ffb-8364-38ff9554f652"
}

resource "azurerm_public_ip" "frontend" {
  name                = "frontend"
  location              = "UK West"
  resource_group_name   = "golive"
  allocation_method   = "Dynamic"
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend-vm"
  location              = "UK West"
  resource_group_name   = "golive"
  network_interface_ids = ["/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/networkInterfaces/workstation758"]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
    id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/terraform-frontend-image"
  }
  storage_os_disk {
    name              = "frontend-vm-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend-vm"
    admin_username = "devops18"
    admin_password = "Passw0rd@1234"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
  data "azurerm_dns_a_record" "frontend" {
    name                = "frontend-dev"
    zone_name           = "obicard.com"
    resource_group_name = "golive"
  }
}
