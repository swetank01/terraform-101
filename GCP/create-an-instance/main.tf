
provider "google" {
    credentials = file("../../../my-json-key.json")
    project = var.project_id
    region = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = "f1-micro"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface  {
    # A default network is created for all GCP projects
    network = "default"
    access_config{ }
  }
}