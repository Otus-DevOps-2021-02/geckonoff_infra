resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  labels = {
    tags = "reddit-app"
  
  }
  resources {
    cores  = var.app_cores
    memory = var.app_memory

  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = var.app_disk_image


    }

  }
  network_interface {
    subnet_id = var.subnet_id
    nat = true
  
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/ash.pub")}"

  }
  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
          
  }
  provisioner "remote-exec" {
    script = "files/deploy.sh"
          
  }
}


