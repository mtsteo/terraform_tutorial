resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "app-web"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [ digitalocean_ssh_key.ssh_key.id ]
}

resource "digitalocean_ssh_key" "ssh_key" {
  name       = "ssh-key"
  public_key = file("/home/mateus/.ssh/id_rsa.pub")
}

output "ips" {
  value = digitalocean_droplet.web.ipv4_address
}
