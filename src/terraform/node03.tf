resource "yandex_compute_instance" "node03" {
  name                      = "node03"
  zone                      = "ru-central1-c"
  hostname                  = "node03.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = "${terraform.workspace == "prod" ? 4 : 2}"
    memory = "${terraform.workspace == "prod" ? 8 : 4}"
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7-base}"
      name        = "root-node03"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet03.id}"
    nat        = false
    ip_address = "192.168.103.13"
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
}
