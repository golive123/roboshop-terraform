provider "azurerm" {
  features {}
  subscription_id = "a9bc3c93-b459-4ffb-8364-38ff9554f652"
}


resource "azurerm_virtual_machine" "test" {
  name                  = "test-terraform"
  location              = "UK West"
  resource_group_name   = "golive"
  network_interface_ids = ["/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet"]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  storage_image_reference {
    id = "/subscriptions/323379f3-3beb-4865-821e-0fff68e4d4ca/resourceGroups/project-setup-1/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "test-terraform-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "test-terraform"
    admin_username = "devops18"
    admin_password = "Passw0rd@1234"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}