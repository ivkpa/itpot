resource "yandex_dns_recordset" "rs1" {
  zone_id = "${var.dns_zone_id}"
  name    = "${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}


resource "yandex_dns_recordset" "rs2" {
  zone_id = "${var.dns_zone_id}"
  name    = "www.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "rs3" {
  zone_id = "${var.dns_zone_id}"
  name    = "gitlab.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}


resource "yandex_dns_recordset" "rs4" {
  zone_id = "${var.dns_zone_id}"
  name    = "grafana.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "rs5" {
  zone_id = "${var.dns_zone_id}"
  name    = "prometheus.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}


resource "yandex_dns_recordset" "rs6" {
  zone_id = "${var.dns_zone_id}"
  name    = "alertmanager.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "rs7" {
  zone_id = "${var.dns_zone_id}"
  name    = "www.gitlab.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}


resource "yandex_dns_recordset" "rs8" {
  zone_id = "${var.dns_zone_id}"
  name    = "www.grafana.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "rs9" {
  zone_id = "${var.dns_zone_id}"
  name    = "www.prometheus.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}


resource "yandex_dns_recordset" "rs10" {
  zone_id = "${var.dns_zone_id}"
  name    = "www.alertmanager.${var.dns_zone_name}"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.node06.network_interface.0.nat_ip_address}"]
}
