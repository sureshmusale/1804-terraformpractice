resource "google_compute_instance" "def"{
    count = "${length(var.name_count)}"
    name = "computeengine18-${count.index+1}"
    #machine_type="${var.machine_type["prod"]}"
    machine_type="${var.machine_type["dev"]}"
    zone="europe-west2-a"

boot_disk{
  initialize_params{
    image = var.image
    #image = "var.image = """
  }
}
    network_interface{
      network="default"
    }
}

#output "-----------------"
output "machine_type"{value = "${google_compute_instance.def.*.machine_type}"}
#output "name" {value="${google_compute_instance.def.*.name}"}
output "zone" {value="${google_compute_instance.def.*.zone}"}

output "image" {
  value =google_compute_instance.def.*.name
}
#comma seperated values
output "instance_id"{value = "${join(",",google_compute_instance.def.*.id)}"}
#output "image" {value = "${google_compute_instance.def.boot_disk.image}"}

#output "image" {value = "${google_compute_instance.def.boot_disk.initialize_params.image}"}
