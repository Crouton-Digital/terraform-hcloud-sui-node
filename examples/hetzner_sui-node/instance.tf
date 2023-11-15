variable "hcloud_token" {
  sensitive = true
  default   = ""
}

module "sui" {
  source         = "CroutonDigital/sui/hetzner"
  version        = "0.0.6" # Set last module version
  hcloud_token   = var.hcloud_token
  service_name   = "sui-node"
  server_type    = "cpx11"
  os_base_image  = "debian-12"
  volume_size    = 30
  # mainnet / testnet / devnet Used for download genesis and docker image
  sui_network    = "mainnet"
  app_version    = "mainnet"
}

output "node_host_ip" {
  value = module.sui.node_host_ip
}