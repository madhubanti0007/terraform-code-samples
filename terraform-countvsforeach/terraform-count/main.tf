terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
 subscription_id = "Provide the subscription id"
 tenant_id = "Provide the tenant id"
 client_id = "Provide the client id"
 client_secret = "Provide the client secret"
 features {

 } 
}

variable "my_list" {
  default = ["zero", "first", "second", "third"]
}
#Create 3 virtual machines in West Europe using count
resource "azurerm_resource_group" "example" {  
  name     = "resourceGrouptestforcount"
  location = "West Europe"
}

resource "azurerm_virtual_network" "main" {
  count = length(var.vm_list)
  name                = "network-${var.vm_list[count.index]}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "internal" {
  count = length(var.vm_list)
  name                 = "internal-${var.vm_list[count.index]}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.main[count.index].name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "main" {
  count = length(var.vm_list)
  name                = "nic-${var.vm_list[count.index]}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "testconfiguration-${count.index}"
    subnet_id                     = azurerm_subnet.internal[count.index].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  count = length(var.vm_list)
  name                  = "vm-${var.vm_list[count.index]}"
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.main[count.index].id]
  vm_size               = "Standard_DS1_v2"

  #Uncomment to delete the OS disk automatically when deleting the VM
  #delete_os_disk_on_termination = true

  #to delete the data disks automatically when deleting the VM
  #delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk-${var.vm_list[count.index]}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging-${count.index}"
  }
}