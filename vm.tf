resource "hcloud_server" "sui" {
  name          = "sui-${var.service_name}"
  image         = var.os_base_image
  server_type   = var.server_type
  datacenter    = var.hetzner_datacenter
  ssh_keys      = [ data.hcloud_ssh_key.admin_ssh_key.id ]
  firewall_ids  = [ hcloud_firewall.sui.id ]
  user_data     = templatefile("${path.module}/cloud_init.yml.tftpl", {
    opt                 = hcloud_volume.sui.linux_device
    version             = var.app_version
    sui_network         = var.sui_network
  })

  public_net {
    ipv4_enabled = false
    ipv4 = hcloud_primary_ip.sui_primary_ip.id
    ipv6_enabled = false
  }

}

resource "hcloud_volume_attachment" "opt" {
  volume_id = hcloud_volume.sui.id

  server_id = hcloud_server.sui.id
  automount = false
}
