resource "azurerm_virtual_machine" "example" {
  name                  = "my-vm"
  location              = "West US"
  resource_group_name   = azurerm_resource_group.example.name
  vm_size               = "Standard_DS1_v2"
  network_interface_ids = [azurerm_network_interface.example.id]
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  os_disk {
    name              = "my-os-disk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  # Additional configurations for data disks, networking, etc.
}
