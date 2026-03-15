resource "google_compute_network" "vpc" {
  name                    = "free-cloud-vpc"
  auto_create_subnetworks = true
}

variable "allowed_ssh_cidr" {
  description = "List of allowed IP ranges for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.allowed_ssh_cidr
}