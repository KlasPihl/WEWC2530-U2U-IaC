#az login --tenant "65f51067-7d65-4aa9-b996-4cc43a0d7111"
provider "azurerm" {
    version = "=2.0.0"
    features {}
    #version = "1.38.0"
    #CLIENT_ID="f01bc3ef-e7b3-413d-b8e2-45266111dbb4"
    #CLIENT_SECRET="PXhHz/WZ.32lG6b1lOkQ_ze:bEY[V]cB"
    #SUBSCRIPTION_ID = var.subscriptionID
    #TENANT_ID="65f51067-7d65-4aa9-b996-4cc43a0d7111"
}
module "AzureKeyVault" {
  source = "./modules/AzureKeyVault"

  KeyVault = {
  DomainJoin         = "skDomainJoin"
  LocalAdministrator = "pihllocaladmin"
  id                 = "/subscriptions/8332bda4-0051-4602-9ab3-42fae7294d3d/resourceGroups/Lab/providers/Microsoft.KeyVault/vaults/pihl-lab-keyvault1"
}
}
