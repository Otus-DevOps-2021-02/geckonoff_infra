variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"

}
variable subnet_id {
  description = "Subnet"

}
variable app_disk_image {
  description = "Disk image for reddit db" 
  default = "reddit-db-base"

}
variable app_cores {
  description = "Numm cores in app image"
  default = 2

}
variable app_memory {
  description = "Memmory usage in Mega byte for app image"
  default = 2

}

