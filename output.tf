output "name" {
  value       = libvirt_network.network.name
  description = "Network name"
}
output "id" {
  value       = libvirt_network.network.id
  description = "Network id"
}
