module "network" {
  source = "../../modules/networking/google"
}

module "compute" {
  source = "../../modules/compute/google"
  count  = 2
}
