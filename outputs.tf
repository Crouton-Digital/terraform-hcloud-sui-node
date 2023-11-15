output "node_host" {
  value = join(", ", hcloud_server.sui.network[*].ip)
}

