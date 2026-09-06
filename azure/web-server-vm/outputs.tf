output "public_ip_address" {
  type        = string
  description = "The public IP address to connect via SSH"
  value       = azurerm_linux_virtual_machine.linux.public_ip_address
}
