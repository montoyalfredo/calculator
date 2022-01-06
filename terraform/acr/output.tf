output "acr_password" {
    value = azurerm_container_registry.acr.admin_password
    sensitive = true
}
output "acr_user" {
    value = azurerm_container_registry.acr.admin_username
}

output "server" {
    value = azurerm_container_registry.acr.login_server
}