provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "mysql_server" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y mysql-server
    EOF

  tags = ["mysql-server"]
}