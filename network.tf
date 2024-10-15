resource "azurerm_virtual_network" "hub_vnet" {
  name                = "vnet-secureaks-demo-weu"
  location            = data.azurerm_resource_group.hub_rg.location
  resource_group_name = data.azurerm_resource_group.hub_rg.name
  address_space       = ["10.0.0.0/23"]
}

resource "azurerm_subnet" "jumphost_snet" {
  name                 = "JumphostSubnet"
  resource_group_name  = data.azurerm_resource_group.hub_rg.name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = ["10.=.0.0/27"]
}