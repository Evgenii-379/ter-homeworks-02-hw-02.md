#locals {
# vm_web_name = "${var.vm_web_name}-${ var.vm_web_cores }-${ var.vm_web_memory }"
# vm_db_name  = "${var.vm_db_name}-${ var.vm_db_cores }-${ var.vm_db_memory }"
#}

locals {
  vm_web_name = "${var.vm_web_name}-${var.vms_resources["web"].cores}-${var.vms_resources["web"].memory}"
  vm_db_name  = "${var.vm_db_name}-${var.vms_resources["db"].cores}-${var.vms_resources["db"].memory}"
}
