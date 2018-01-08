
provider google {
  region = "${var.region}"
}

resource "google_compute_instance" "default" {
  name         = "mysql"
  machine_type = "n1-standard-1"
  project      = "${var.project}"
  zone         = "${var.zone}"

  tags = ["db", "mysql"]

  boot_disk {
    initialize_params {
      image = "mysql-custom"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "${var.network}"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  metadata_startup_script = "sudo service start mysql "

}

resource "google_compute_firewall" "default-ssh" {
  project = "${var.project}"
  name    = "${var.name}-vm-ssh"
  network = "${var.network}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["mysql"]
}