<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | >= 0.7.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_libvirt"></a> [libvirt](#provider\_libvirt) | 0.7.6 |

## Resources

| Name | Type |
|------|------|
| [libvirt_network.network](https://registry.terraform.io/providers/dmacvicar/libvirt/latest/docs/resources/network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network"></a> [network](#input\_network) | Network configuration | ```object({ name = string, subnet = optional(string, "10.1.2.0/24"), domain = optional(string, "local") # mode can be: "nat" (default), "none", "route", "open", "bridge" type = string bridge = optional(string, "br0") mtu = optional(number, 1500) })``` | ```{ "name": "talos", "type": "bridge" }``` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | description | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Network id |
| <a name="output_name"></a> [name](#output\_name) | Network name |
<!-- END_TF_DOCS -->