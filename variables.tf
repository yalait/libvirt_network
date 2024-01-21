variable "network_name" {
  type        = string
  description = "description"
  default     = ""
}

variable "network" {
  description = "Network configuration"
  type = object({
    name   = string,
    subnet = optional(string, "10.1.2.0/24"),
    domain = optional(string, "local")
    # mode can be: "nat" (default), "none", "route", "open", "bridge"
    type   = string
    bridge = optional(string, "br0")
    mtu    = optional(number, 1500)
  })
  default = {
    name = "talos"
    type = "bridge"
  }
}
