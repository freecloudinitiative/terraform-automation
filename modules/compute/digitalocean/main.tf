resource "digitalocean_droplet" "vm" {
  count  = var.instance_count
  image  = "ubuntu-22-04-x64"
  name   = "do-vm-${count.index}"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}