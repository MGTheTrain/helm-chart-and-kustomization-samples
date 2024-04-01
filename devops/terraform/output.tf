# Azure Container registry
output "container_registry_name_list" {
  value = [for container_registry in azurerm_container_registry.this : container_registry.name]
}