resource "yandex_compute_instance" "node06" {
  name                      = "node06"
  zone                      = "ru-central1-c"
  hostname                  = "node06.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = "${terraform.workspace == "prod" ? 8 : 8}"
    memory = "${terraform.workspace == "prod" ? 8 : 8}"
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7-base}"
      name        = "root-node06"
      type        = "network-nvme"
      size        = "${terraform.workspace == "prod" ? 40 : 20}"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet0.id}"
    nat        = true
    ip_address = "192.168.100.16"
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
