#This terraform file retrieves the details of the
#public and private VLANs that will used for each
#of the virtual servers. 


#Retrieve information for the public vlan
#Doc: https://cloud.ibm.com/docs/terraform?topic=terraform-infrastructure-data-sources#classic-vlan
data "ibm_network_vlan" "public_vlan" {
    name = "${var.public_vlan_name}"
}

#Retrieve information for the private vlan
#Doc: https://cloud.ibm.com/docs/terraform?topic=terraform-infrastructure-data-sources#classic-vlan
data "ibm_network_vlan" "private_vlan" {
    name = "${var.private_vlan_name}"
}