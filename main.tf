resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machinetype
  zone         = var.zonename

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size = var.disk_size
    }
  }

  network_interface {
    network = google_compute_network.my_vpc.id

    access_config {

    }
  }
  
}

resource "google_compute_network" "my_vpc" {
  name                    = var.vpcname
  auto_create_subnetworks = false
}