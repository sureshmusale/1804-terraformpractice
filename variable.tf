variable "image" {  default = "debian-cloud/debian-9" }

variable "machine_type" {
  type = map
  default = {
    "dev" = "n1-standard-1"
    "prod" = "dont work"
  }
}
variable "name_count" {
  #default = ["server1","server2","server3"]
  #default = ["server1"]
  default = ["server1","server2"]
}
