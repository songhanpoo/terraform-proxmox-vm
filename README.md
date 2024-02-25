## Run Locally

Clone the project

```bash
  git clone https://github.com/songhanpoo/terraform-proxmox-vm
```

Go to the project directory

```bash
  cd terraform-proxmox-vm
```

Install dependencies and check resource gonna craete

```bash
  terraform init && terraform plan
```

Trigger to deployment

```bash
  terraform apply
```

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.0   |
| <a name="requirement_proxmox"></a> [proxmox](#requirement_proxmox)       | >=0.46.6 |

## Providers

| Name                                                         | Version  |
| ------------------------------------------------------------ | -------- |
| <a name="provider_proxmox"></a> [proxmox](#provider_proxmox) | >=0.46.6 |

## Providers

[bpg/proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest/docs)

## Resources

| Name                                                                                                                                  | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [proxmox_virtual_environment_vm.vm](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_vm) | resource |

## Inputs

| Name                                                                     | Description                                                                                | Type           | Default   | Required |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | -------------- | --------- | :------: |
| <a name="input_agent_enabled"></a> [agent_enabled](#input_agent_enabled) | (Optional) The QEMU agent configuration.                                                   | `bool`         | `true`    |    no    |
| <a name="input_bridge"></a> [bridge](#input_bridge)                      | (optional) describe your variable                                                          | `string`       | `"vmbr0"` |    no    |
| <a name="input_create"></a> [create](#input_create)                      | Whether to create an virtual machine                                                       | `bool`         | `true`    |    no    |
| <a name="input_datastore_id"></a> [datastore_id](#input_datastore_id)    | (Optional) The identifier for the datastore to create the disk in (defaults to local-lvm). | `string`       | n/a       |   yes    |
| <a name="input_description"></a> [description](#input_description)       | (Optional) The description.                                                                | `string`       | n/a       |   yes    |
| <a name="input_down_delay"></a> [down_delay](#input_down_delay)          | (Optional) Defines startup and shutdown behavior of the VM.                                | `string`       | n/a       |   yes    |
| <a name="input_name"></a> [name](#input_name)                            | (Optional) The virtual machine name.                                                       | `string`       | n/a       |   yes    |
| <a name="input_node_name"></a> [node_name](#input_node_name)             | (Required) The name of the node to assign the virtual machine to.                          | `string`       | n/a       |   yes    |
| <a name="input_order"></a> [order](#input_order)                         | (Optional) Defines startup and shutdown behavior of the VM.                                | `string`       | n/a       |   yes    |
| <a name="input_tags"></a> [tags](#input_tags)                            | List of virtual machine tags.                                                              | `list(string)` | `[]`      |    no    |
| <a name="input_type"></a> [type](#input_type)                            | (Optional) The type (defaults to l26).                                                     | `string`       | `"l26"`   |    no    |
| <a name="input_up_delay"></a> [up_delay](#input_up_delay)                | (Optional) Defines startup and shutdown behavior of the VM.                                | `string`       | n/a       |   yes    |
| <a name="input_vm_clone_id"></a> [vm_clone_id](#input_vm_clone_id)       | (Required) The identifier for the source VM.                                               | `number`       | n/a       |   yes    |

## Outputs

| Name                                                                          | Description |
| ----------------------------------------------------------------------------- | ----------- |
| <a name="output_ipv4_addresses"></a> [ipv4_addresses](#output_ipv4_addresses) | n/a         |

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Authors

- [@Songhanpoo](https://www.github.com/songhanpoo) - Forked
- [@Wiscaksono](https://www.github.com/wiscaksono) - Owner
- [@Yanka Darelova](https://www.behance.net/darelova) - Designer
