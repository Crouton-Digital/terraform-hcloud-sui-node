# terraform-hetzner-sui
Deploy SUI node on Hetzner


## Requirements to configure a SUI integration
The requirements to configure a SUI integration include:

* A Sui Full node. You can operate your own Sui Full node or use a Full node from a node operator.
* Suggested hardware requirements to run a Sui Full node:
   * CPU: 8 physical cores / 16 vCPUs
   * RAM: 128 GB
   * Storage (SSD): 4 TB NVMe drive

For best results, run Sui Full nodes on Linux. Sui supports the Ubuntu and Debian distributions. You can also fun a Full node on macOS.

## Deploy SUI-NODE

Example how to use module: 
```yaml
variable "hcloud_token" {
  sensitive = true
  default   = ""
}

module "sui" {
  source         = "CroutonDigital/sui/hetzner"
  version        = "0.0.2"
  hcloud_token   = var.hcloud_token
  service_name   = "sui-node"
  server_type    = "cpx11"
  os_base_image  = "debian-12"
  volume_size    = 30
  # mainnet / testnet / devnet Used for download genesis and docker image
  sui_network    = "mainnet"
  app_version    = "mainnet"
}
```

```bash
export TF_VAR_hcloud_token="PUT HEZTNER API TOKEN"

$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.


