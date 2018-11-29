resource "digitalocean_droplet" "first-nginix" {
    image = "ubuntu-16-04-x64"
    name = "first-nginix"
    region = "blr1"
    size = "512mb"
    private_networking = true
    ssh_keys = [
        "${var.ssh_fingerprint}"
    ]
    connection {
        user = "root"
        type = "ssh"
        private_key = "${file(var.pvt_key)}"
        timeout = "2m"
    }
    provisioner "remote-exec" {
        inline = [
            "export PATH=$PATH:/usr/bin",
            # install nginix
            "sudo apt-get update",
            "sudo apt-get -y install nginx"
        ]
    }

}
