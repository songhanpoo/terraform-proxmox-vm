
output "ipv4_addresses" {
  value = proxmox_virtual_environment_vm.vm[0].ipv4_addresses[1]
}
