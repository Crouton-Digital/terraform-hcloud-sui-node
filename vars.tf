variable "hcloud_token" {
  sensitive = true
}

# fsn1, hel1, ash or hil
# nbg1-dc3, fsn1-dc14, hel1-dc2, ash-dc1 or hil-dc1
variable "hetzner_location" {
  default = "fsn1"
}

variable "hetzner_datacenter" {
  default = "fsn1-dc14"
}

variable "os_base_image" {
  default = "debian12"
}

variable "server_type" {
  default = "cpx11"
}

variable "service_name" {}

# Version docker containers
variable "app_version" {
  default = "testnet"
}

variable "volume_size" {
  default = 10
}
