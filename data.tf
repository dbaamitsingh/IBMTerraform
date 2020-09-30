data "azurerm_key_vault" "key_vault"{
    name = "learntf-vaultgd"
    resource_group_name = "remote_group"
}

data "azurerm_key_vault_secret" "admin_password" {
    name = "admin-password"
    key_vault_id = data.azurerm_key_vault.key_vault.id
}
