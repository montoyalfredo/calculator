terraform { 
required_providers {
azurerm = {
source = "hashicorp/azurerm"
version = ">= 2.26"
}
}

backend "azurerm" {
    resource_group_name      = "resource-group-alfredo-montoya"
    storage_account_name     = "storagenamealfredo"
    container_name           = "storagecontaineracr"
    key                      = "storagecontaineracr.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_msi = true
    subscription_id = "6fea5c6b-073f-4a0d-9a56-51e719c4b283"
    client_id     = "2402bcac-4145-4077-8699-1edf1d3750d5"
    client_secret = "YGGRpQnpXdWk1_e4doxRNYvioo~TQygGd0"
    tenant_id       = "f2567840-b2b7-49ad-8240-568a42281394"
    skip_provider_registration = true
}

resource "azurerm_container_registry" "acr" {
  name                     = "acralfredo"
  resource_group_name      = "resource-group-alfredo-montoya"
  location                 = "southcentralus"
  sku                      = "Basic"
  admin_enabled            = true
}
