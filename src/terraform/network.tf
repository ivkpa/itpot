# Network
resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "subnet0" {
  name = "subnet0"
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.100.0/24"]
}

resource "yandex_vpc_subnet" "subnet01" {
  name = "subnet01"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  route_table_id = "${yandex_vpc_route_table.route01.id}"
  v4_cidr_blocks = ["192.168.101.0/24"]
}

resource "yandex_vpc_subnet" "subnet02" {
  name = "subnet02"
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.default.id}"
  route_table_id = "${yandex_vpc_route_table.route02.id}"
  v4_cidr_blocks = ["192.168.102.0/24"]
}

resource "yandex_vpc_subnet" "subnet03" {
  name = "subnet03"
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.default.id}"
  route_table_id = "${yandex_vpc_route_table.route03.id}"
  v4_cidr_blocks = ["192.168.103.0/24"]
}

resource "yandex_vpc_route_table" "route01" {
  name       = "route01"
  network_id = "${yandex_vpc_network.default.id}"
  static_route {
    destination_prefix = "192.168.0.0/16"
    next_hop_address   = "192.168.101.1"
  }
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "192.168.101.5"
  }
  
}


resource "yandex_vpc_route_table" "route02" {
  name       = "route02loc"
  network_id = "${yandex_vpc_network.default.id}"
  static_route {
    destination_prefix = "192.168.0.0/16"
    next_hop_address   = "192.168.102.1"
  }
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "192.168.102.5"
  }
  
}


resource "yandex_vpc_route_table" "route03" {
  name       = "route03"
  network_id = "${yandex_vpc_network.default.id}"
  static_route {
    destination_prefix = "192.168.0.0/16"
    next_hop_address   = "192.168.103.1"
  }
  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address   = "192.168.103.5"
  }
  
}