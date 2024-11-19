output "vm_web_outputs" {
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
    fqdn          = "${yandex_compute_instance.platform.network_interface[0].nat_ip_address}.netology.com"  # Replace with your domain
  }
}
 
output "vm_db_outputs" {
  value = {
    instance_name = yandex_compute_instance.platform_db.name
    external_ip   = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address
    fqdn          = "${yandex_compute_instance.platform_db.network_interface[0].nat_ip_address}.netology.com"  # Replace with your domain
  }
}