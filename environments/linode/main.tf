module "network" {
  source = "../../modules/networking/linode"
}

module "compute" {
  source = "../../modules/compute/linode"
  count  = 2
}
