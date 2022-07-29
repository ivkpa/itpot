resource "yandex_compute_instance" "node05" {
  name                      = "node05"
  zone                      = "ru-central1-b"
  hostname                  = "node05.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = "${terraform.workspace == "prod" ? 4 : 2}"
    memory = "${terraform.workspace == "prod" ? 8 : 4}"
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7-base}"
      name        = "root-node05"
      type        = "network-nvme"
      size        = "${terraform.workspace == "prod" ? 40 : 20}"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet02.id}"
    nat        = false
    ip_address = "192.168.102.15"
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
