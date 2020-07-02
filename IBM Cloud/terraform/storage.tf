#This terraform file creates two file storage resources
#that will be linked to corresponding virtual servers.
# storage1 links to virtual server1 and the same for
#storage2 and virtual server2.

#Create file storage1
https://cloud.ibm.com/docs/terraform?topic=terraform-infrastructure-resources#storage-file
resource "ibm_storage_file" "storage1" {
  type = "Performance"
  datacenter = "${var.dataceneter}"
  capacity = "20"
  iops = "100"
}

#Create file storage2
https://cloud.ibm.com/docs/terraform?topic=terraform-infrastructure-resources#storage-file
resource "ibm_storage_file" "storage2" {
  type = "Performance"
  datacenter = "${var.datacenter}"
  capacity = "20"
  iops = "100"
}
