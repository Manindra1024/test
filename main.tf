provider "google" {
 credentials = file("creds.json")
 project     = "symmetric-stage-210511"
 region      = "us-central1"
}

resource "google_compute_address" "static" {
  name = "test-gcp"
}

output "instance_ip_addr" {
  value       = google_compute_address.static.address
  description = "The private IP address of the main server instance."
}
