###cloud vars
 
variable "cloud_id" {
  type        = string
  default     = "b1gt41qe1o37635d6cud"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}
 
variable "folder_id" {
  type        = string
  default     = "b1gt6sro0sp7kjv4dnh1"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}
 
variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
 
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
 
variable "db_cidr" {
  description = "CIDR block for the database subnet"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}
 
variable "default_zone_db" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
 
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
 
}
variable "vpc_name_db" {
  type        = string
  default     = "develop_db"
  description = "VPC network & subnet name"
 
}
###ssh vars
 
variable "metadata" {
  type = map(string)
  description = "Metadata для всех VMs"
  }
 
#variable "vms_ssh_root_key" {
#  type        = string
#  default     = <<EOF
#ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwa4H2I5lRM550jmbJiA13waVCzl+05losNaV+yRgIUHY2Lp9G+00Yvy9KacHEDo8S+PCWdGS2pu8V3F1J8oF049v/WiWA9VSG38RrHW8ZXQWVm16J5YzANhmsgQxxHi/hWGR4iy7MN+YOMV2V7pk2sxbfcBtEjn9zX>
#EOF
 
#  description = "ssh-keygen -t id_rsa.pub"
#}
#variable "vm_web_name" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "Name of the compute instance"
#}
 
#variable "vm_web_platform_id" {
#  type        = string
#  default     = "standard-v2"
#  description = "Platform ID for the compute instance"
#}
 
#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "Number of CPU cores for the compute instance"
#}
 
#variable "vm_web_memory" {
#  type        = number
#  default     = 2
#  description = "Memory in GB for the compute instance"
#}
 
#variable "vm_web_core_fraction" {
#  type        = number
#  default     = 5
#  description = "Core fraction for the compute instance"
#}
 
#variable "vm_web_image_family" {
#  type        = string
#  default     = "ubuntu-2004-lts"
#  description = "Family of the image used for the boot disk"
#}
