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

### Create project on hetzner
* Go to https://console.hetzner.cloud/
* Press + New project and enter name of project 
* Go to created project and Security 
* Press add SSH key and upload your admin ssh public key with name "admin ssh key"
* Go to API Tab and Create API Tokens

### Prepare terraform directory structure and deploy 

Example files you can take: 
```bash
git clone https://github.com/CroutonDigital/terraform-hetzner-sui.git
cd terraform-hetzner-sui/examples/hetzner_sui-node
```

Example how to use module: 
```yaml
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
  volume_size    = 500
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

# Print SUI-NODE ip
$ terraform output 
```

Run `terraform destroy` when you don't need these resources.

### Login to SUI-NODE inside VM

```bash
ssh root@<sui node ip>
```
