output "resource_group_name" {
  description = "ecommerce-microservices-rg"
  value       = azurerm_resource_group.microservices_rg.name
}

output "aks_cluster_names" {
  description = "microservices-cluster-prod"
  value = {
    for k, m in module.aks :
    k => m.aks_cluster_name
  }
}

output "aks_hosts" {
  description = "microservices-cluster-prod-host"
  value = {
    for k, m in module.aks :
    k => m.host
  }
  sensitive = true
}


output "aks_client_certificates" {
  description = "microservices-cluster-prod-client-certificate"
  value = {
    for k, m in module.aks :
    k => m.client_certificate
  }
  sensitive = true
}

output "aks_client_keys" {
  description = "microservices-cluster-prod-client-key"
  value = {
    for k, m in module.aks :
    k => m.client_key
  }
  sensitive = true
}

output "aks_cluster_ca_certificates" {
  description = "microservices-cluster-prod-cluster-ca-certificate"
  value = {
    for k, m in module.aks :
    k => m.cluster_ca_certificate
  }
  sensitive = true
}

output "acr_name" {
  description = "microservices-acr"
  value       = azurerm_container_registry.microservices_acr.name
}

output "acr_login_server" {
  description = "microservices-acr-login-server"
  value       = azurerm_container_registry.microservices_acr.login_server
}

output "acr_admin_username" {
  description = "microservices-acr-admin-username"
  value       = azurerm_container_registry.microservices_acr.admin_username
  sensitive   = true
}

output "acr_admin_password" {
  description = "microservices-acr-admin-password"
  value       = azurerm_container_registry.microservices_acr.admin_password
  sensitive   = true
}