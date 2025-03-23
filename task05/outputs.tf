# outputs.tf
output "traffic_manager_fqdn" {
  description = "The FQDN of the traffic manager profile"
  value       = module.traffic_manager.fqdn
}