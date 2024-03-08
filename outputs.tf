output "docker_vm_ip" {
  description = "The IP of the Docker VM"
  value       = harvester_virtualmachine.docker_vm.network_interface.0.ip_address
}