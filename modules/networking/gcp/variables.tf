variable "region" { type = string }

variable "allowed_ssh_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}