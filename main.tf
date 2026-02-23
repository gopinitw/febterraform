resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machinetype
  zone         = var.zones

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
  network_interface {
    network = google_compute_network.my_vpc.id

    access_config {

    }
    access_config {

    }
  }
  
}

resource "google_storage_bucket" "name" {
  
}

resource "google_storage_bucket" "name_new" {
  
}

resource "google_storage_bucket" "name_new_2" {
  
}
