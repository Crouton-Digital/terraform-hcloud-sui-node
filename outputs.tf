output "node_host_ip" {
  value = join(", ", hcloud_server.sui.ipv4_address)
}

