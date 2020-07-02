#This terraform file contains the output parameters
#defined for this architecture. Specifically, the public IP Address of the created
#virtual instances

output "public_ips" {
  value = ["${ibm_compute_vm_instance.compute_instances1.*.ipv4_address}"]
}
