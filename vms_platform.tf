###cloud var
 
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of the compute instance"
}
 
variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform ID for the compute instance"
}
 
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
 
variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the image used for the boot disk"
}
 
### vms_resources
 
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 2
      core_fraction = 5
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 4
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-ssd"
    }
  }
}
### Variables for the second VM
 
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name of the compute instance"
}
 
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Platform ID for the compute instance"
}
 
#variable "vm_db_cores" {
#  type        = number
#  default     = 2
#  description = "Number of CPU cores for the compute instance"
#}
 
#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "Memory in GB for the compute instance"
#}
 
#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Core fraction for the compute instance"
#}
 
variable "vm_db_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family of the image used for the boot disk"
}
