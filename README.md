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

## 

export TF_VAR_hcloud_token = ""