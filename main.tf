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
  skip_provider_registration = true
}

module "windows_vm" {
  source = "./modules/windows-vm"

  resource_group_name = "testrg"
  location = "East us 2"
  virtual_network_name = "testvnet"
  subnet_name = "testsub"
  network_interface_name = "testneti"
  windows_virtual_machine_name = "testvm"
}