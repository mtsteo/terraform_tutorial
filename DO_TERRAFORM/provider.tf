terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {
  type    = string
  default = ""
}


# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}
