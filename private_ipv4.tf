resource "hcloud_primary_ip" "sui_primary_ip" {
  name          = "sui-${var.service_name}_primary_ip"
  datacenter    = var.hetzner_datacenter
  type          = "ipv4"
  assignee_type = "server"
  auto_delete   = false

}