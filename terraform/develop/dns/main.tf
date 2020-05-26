resource "google_dns_managed_zone" "fun-cloud-platform" {
  name     = "fun-cloud-platform"
  dns_name = "${var.dns_name}"
}

resource "google_dns_record_set" "example" {
  name    = "dev.${google_dns_managed_zone.fun-cloud-platform.name}"
  type    = "A"
  managed_zone = "${google_dns_managed_zone.fun-cloud-platform.name}"
  rrdatas = ["35.243.96.178"]
  ttl     = 300
}