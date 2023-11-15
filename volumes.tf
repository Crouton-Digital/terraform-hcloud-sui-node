resource "hcloud_volume" "sui" {
  name      = "sui-${var.service_name}-root"
  location = var.hetzner_location
  size      = var.volume_size
  automount = false
  format    = "xfs"
  #  mount_point = "/opt"
  labels = {
    VM = "${var.service_name}"
    Service = "SUI-NODE"
  }

#  lifecycle {
#    prevent_destroy = true
#  }
}
