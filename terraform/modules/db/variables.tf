variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"

}
variable subnet_id {
  description = "Subnet"

}
variable db_disk_image {
  description = "Disk image for reddit db" 
  default = "reddit-db-base"

}
variable db_cores {
  description = "Numm cores in db image"
  default = 2

}
variable db_memory {
  description = "Memmory usage in Mega byte for db image"
  default = 2

}
