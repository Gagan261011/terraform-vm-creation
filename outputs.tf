output "public_ips" {
  description = "The public IP addresses of the virtual machines."
  value       = azurerm_public_ip.pip[*].ip_address
}

output "resource_group_name" {
  description = "The name of the resource group used."
  value       = data.azurerm_resource_group.existing.name
}

output "ssh_private_key_path" {
  description = "The path to the generated SSH private key."
  value       = local_file.private_key_file.filename
}
