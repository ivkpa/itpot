resource "yandex_compute_instance" "nat01" {
  name                      = "nat01"
  zone                      = "ru-central1-a"
  hostname                  = "nat01.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "fd84mnpg35f7s7b0f5lg"
      name        = "root-nat01"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet01.id}"
    nat        = true
    ip_address = "192.168.101.5"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "nat02" {
  name                      = "nat02"
  zone                      = "ru-central1-b"
  hostname                  = "nat02.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "fd84mnpg35f7s7b0f5lg"
      name        = "root-nat02"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet02.id}"
    nat        = true
    ip_address = "192.168.102.5"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "nat03" {
  name                      = "nat03"
  zone                      = "ru-central1-c"
  hostname                  = "nat03.netology.yc"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "fd84mnpg35f7s7b0f5lg"
      name        = "root-nat03"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.subnet03.id}"
    nat        = true
    ip_address = "192.168.103.5"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}