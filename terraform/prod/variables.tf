variable "cloud_id" {
  description = "Cloud"

}
variable "folder_id" {
  description = "Folder"

}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"

}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"

}
variable "image_id" {
  description = "Disk image"

}
variable "subnet_id" {
  description = "Subnet"

}
variable "service_account_key_file" {
  description = "key.json"

}
variable "private_key_path" {
  description = "private key for connection"

}

variable "yandex_zone" {
  description = "zone for yandex cloud"
  default     = "ru-central1-a"

}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"

}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"

}
variable db_cores {
  description = "Numm cores in db image"
  default = 2

}
variable db_memory {
  description = "Memmory usage in Mega byte for db image"
  default = 2

}
variable app_cores {
  description = "Numm cores in app image"
  default = 2

}
variable app_memory {
  description = "Memmory usage in Mega byte for app image"
  default = 2

}

