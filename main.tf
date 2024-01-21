resource "libvirt_network" "network" {
  name   = var.network_name
  domain = var.network.type != "bridge" ? "${var.network_name}.${var.network.domain}" : null
  mode   = var.network.type
  # Параметр bridge применяется только для значения mode = "bridge" или "route"
  bridge    = var.network.type == "bridge" || var.network.type == "route" ? var.network.bridge : null
  addresses = var.network.type == "route" || var.network.type == "nat" ? [var.network.subnet] : null
  autostart = true
  mtu       = var.network.type != "bridge" ? var.network.mtu : null
  dhcp {
    enabled = true
  }
  dns {
    enabled    = false
    local_only = false
  }
}
