  terraform { 
required_providers {
azurerm = {
source = "hashicorp/azurerm"
version = "~> 2.21.0"
}
}

backend "azurerm" {
    resource_group_name      = "resource-group-alfredo-montoya"
    storage_account_name     = "storagenamealfredo"
    container_name           = "storagecontaineraks"
    key                      = "storagecontaineraks.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_msi = true
    subscription_id = "6fea5c6b-073f-4a0d-9a56-51e719c4b283"
    client_id     = "2402bcac-4145-4077-8699-1edf1d3750d5"
    client_secret = "YGGRpQnpXdWk1_e4doxRNYvioo~TQygGd0"
    tenant_id     = "f2567840-b2b7-49ad-8240-568a42281394"
    skip_provider_registration = true
}


resource "azurerm_kubernetes_cluster" "k8s" {
    name                = var.cluster_name
    location            = "southcentralus"
    resource_group_name = "resource-group-alfredo-montoya"
    dns_prefix          = var.dns_prefix

    linux_profile {
        admin_username = "ubuntu"

        ssh_key {
            key_data = file(var.ssh_public_key)
        }
    }

    default_node_pool {
        name            = "agentpool"
        node_count      = var.agent_count
        vm_size         = "Standard_D2_v2"
    }

    service_principal {
        client_id     = var.client_id
        client_secret = var.client_secret
    }

    addon_profile { 
        http_application_routing {
            enabled = true
        }
    }

    network_profile {
        load_balancer_sku = "Standard"
        network_plugin = "kubenet"
    }

    tags = {
        Environment = "Training"
    }

}