resource "proxmox_virtual_environment_vm" "vm" {
  count       = var.create ? 1 : 0
  name        = var.name
  description = var.description
  tags        = var.tags
  node_name   = var.node_name

  agent {
    enabled = var.agent_enabled
  }

  startup {
    order      = var.order
    up_delay   = var.up_delay
    down_delay = var.down_delay
  }

  clone {
    datastore_id = var.datastore_id
    vm_id        = var.vm_clone_id
  }

  initialization {
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }

  network_device {
    bridge = var.bridge
  }
  vga {
    enabled = true
    memory  = null
  }
  operating_system {
    type = var.type
  }
}
