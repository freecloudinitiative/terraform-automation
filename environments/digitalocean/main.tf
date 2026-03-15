module "network" {
  source = "../../modules/networking/digitalocean"
}

module "compute" {
  source = "../../modules/compute/digitalocean"
  count  = 2
}
