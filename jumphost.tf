module "jumphost" {
  source = "git::https://github.com/mhoehl05/basic-jumphost.git?ref=main"

  rg_name           = data.azurerm_resource_group.hub_rg.name
  snet_id           = azurerm_subnet.jumphost_snet.id
  public_key_path_1 = "${path.module}/ssh_keys/id_rsa_mark.pub"
  public_key_path_2 = "${path.module}/ssh_keys/id_rsa_reffat.pub"
  public_key_path_3 = "${path.module}/ssh_keys/id_rsa_mark.pub"
}