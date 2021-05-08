output "external_ip_address_app" {
  value = module.app.external_ip_address_app

}

output "internal_ip_address_app" {
  value = module.app.internal_ip_address_app

}

output "external_ip_address_db" {
    value = module.db.external_ip_address_db

} 

output "internal_ip_address_db" {
  value = module.db.internal_ip_address_db

}

resource "local_file" "AnsibleInventory" {
   content = templatefile("inventory.tmpl",
   {
     app_ip = module.app.external_ip_address_app
     db_ip = module.db.external_ip_address_db
   }
  )
   filename = "../../ansible/environments/stage/inventory"
   
}
