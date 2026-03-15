resource "digitalocean_vpc" "vpc" {
  name   = "free-cloud-vpc"
  region = "nyc1"
}

resource "digitalocean_firewall" "ssh" {
  name = "only-22"
  droplet_ids = []

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0"]
  }
}