provider "azurerm" {
  features {}
  subscription_id = "a9bc3c93-b459-4ffb-8364-38ff9554f652"
}
resource "azurerm_virtual_machine" "test" {
  name                  = "terraform-test"
  location              = "UK West"
  resource_group_name   = "golive"
  network_interface_ids = ["/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Network/virtualNetworks/golive-vnet"]
  vm_size               = "Standard_B2ls_v2 "

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    id= "/subscriptions/a9bc3c93-b459-4ffb-8364-38ff9554f652/resourceGroups/golive/providers/Microsoft.Compute/images/imageserver-golive"
  }
  storage_os_disk {
    name              = "terraform-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "terraform"
    admin_username = "devops18  "
    admin_password = "Passw0rd@1234"
  }
}