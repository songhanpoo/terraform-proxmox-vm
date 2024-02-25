variable "create" {
  type        = bool
  description = "Whether to create an virtual machine"
  default     = true
}

variable "name" {
  type        = string
  description = "(Optional) The virtual machine name."
}

variable "description" {
  type        = string
  description = "(Optional) The description."
}

variable "tags" {
  type        = list(string)
  description = "List of virtual machine tags."
  default     = []
}

variable "node_name" {
  type        = string
  nullable    = false
  description = "(Required) The name of the node to assign the virtual machine to."
}


variable "agent_enabled" {
  # Read more https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_vm#agent
  type        = bool
  default     = true
  description = "(Optional) The QEMU agent configuration."
}

variable "order" {
  type        = string
  description = "(Optional) Defines startup and shutdown behavior of the VM."
}

variable "up_delay" {
  # Read more
  type        = string
  description = "(Optional) Defines startup and shutdown behavior of the VM."
}

variable "down_delay" {
  # Read more
  type        = string
  description = "(Optional) Defines startup and shutdown behavior of the VM."
}

variable "datastore_id" {
  type        = string
  description = "(Optional) The identifier for the datastore to create the disk in (defaults to local-lvm)."
}

variable "vm_clone_id" {
  type        = number
  description = "(Required) The identifier for the source VM."
}

variable "bridge" {
  type        = string
  description = "(optional) describe your variable"
  default     = "vmbr0"
}

variable "type" {
  type        = string
  default     = "l26"
  description = " (Optional) The type (defaults to l26)."
}
