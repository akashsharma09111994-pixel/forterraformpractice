terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.67.0"
        }
    }
}

provider azurerm {
    features {

    }
}

resource "azurerm_resource_group" "moon"{
    name = "merarghai"
    location = "west us"
}
resource "azurerm_storage_account" "meramoon"{
    name = "merastoragehai97111"
    resource_group_name = "merarghai"
    location = "west us"
    account_tier = "Standard"
    account_replication_type = "LRS"
}