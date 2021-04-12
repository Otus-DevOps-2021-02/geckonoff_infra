resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  labels = {
    tags = "reddit-db"
  
  }
  resources {
    cores  = 2
    memory = 2

  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd87sic59c2o3hc9rup8"


    }

  }
  network_interface {
    subnet_id = var.subnet_id
    nat = true
  
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/ash.pub")}"

  }
  connection {
    type  = "ssh"
    host  = yandex_compute_instance.app.network_interface.0.nat_ip_address
    user  = "ubuntu"
    agent = false
    # путь до приватного ключа
    private_key = file(var.private_key_path)

  }
}


