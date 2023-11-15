resource "hcloud_firewall" "sui" {
  name = "sui-${var.service_name}"
  rule {
    direction = "in"
    protocol  = "icmp"
    source_ips = [
      "0.0.0.0/0"
    ]
  }

#  rule {
#    direction = "in"
#    protocol  = "tcp"
#    port      = "5432"
#    source_ips = [
#      "0.0.0.0/0",
#      "::/0"
#    ]
#  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

}