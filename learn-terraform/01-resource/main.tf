provider "azurerm" {
  features {}
  subscription_id = "a9bc3c93-b459-4ffb-8364-38ff9554f652"
}

resource "azurerm_linux_virtual_machine" "test" {
  name                = "terraform-test"
  location            = "UK West"
  resource_group_name = "golive"
  size                = "Standard_B2s"
  admin_username      = "devops18"
  admin_password      = "Passw0rd@1234"
  network_interface_ids = [
    "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/networkInterfaces/golive-nic"
  ]
  disable_password_authentication = false

  source_image_id = "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/imageserver-golive"

  os_disk {
    name                 = "terraform-disk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  computer_name = "terraform-test"

  tags = {
    environment = "staging"
  }
}
