# This is the provider used to spin up the gcloud instance
provider "google" {
  project = var.project_id
  region  = var.region_name
  zone    = var.zone_name
  credentials = file("../../../myjson.json")
}

# This creates the google instance
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = var.machine_size

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }
  
  network_interface  {
    # A default network is created for all GCP projects
    network = "default"
    access_config{ }
  }



  # We connect to our instance via Terraform and remotely executes our script using SSH
  provisioner "remote-exec" {
    script = var.script_path

    connection {
      type        = "ssh"
      host        = google_compute_address.static.address
      user        = var.username
      private_key = file(var.private_key_path)
    }
  }
}

# We create a public IP address for our google compute instance to utilize
resource "google_compute_address" "static" {
  name = "vm-public-address"
}