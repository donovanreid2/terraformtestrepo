terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=1.3.8"
    }
  }
}

provider "azurerm" {
  features {}
}

module "windows-vm" {
  source = "./modules/windows-vm"

  resource_group_name = "testrg"
  location = "west us"
  virtual_network_name = "testvnet"
  subnet_name = "testsub"
  network_interface_name = "test-neti"
  windows_virtual_machine_name = "testvm"
}