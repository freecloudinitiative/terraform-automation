resource "linode_instance" "vm" {
  count  = var.instance_count
  label  = "linode-vm-${count.index}"
  image  = "linode/ubuntu22.04"
  region = var.region
  type   = "g6-nanode-1" # En ucuz/free tier uyumlu tip
}