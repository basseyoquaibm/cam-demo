#This terraform file contains the variables and default values for 
#this architecture. Default values will be used unless changed at 
#deployment time.


# The actual public key that will be created in IBM Cloud and
# assigned to the virtual servers

variable ssh_key {
  description = "ssh public key"
  default = ""
}

variable ssh_label {
  description = "ssh label"
  default = "testkey"
}
variable ssh_notes {
  description = "ssh public key notes"
  default = "This is an ssh public key"
}


# Pre-existing VLANs. They are deployed using a ticket request.
# The VLAN Name can be obtained from the Network section of the IBM Cloud Classic Infastructure Dashboard


variable private_vlan_name {
  description = "private VLAN"
  default = ""
}
variable public_vlan_name {
  description = "public VLAN"
  default = ""
}

#The datacenter and region to deploy the architecture. 

variable datacenter {
  description = "location to deploy"
  default = ""
}

variable ibm_region {
  description = "IBM Cloud region"
  default = ""
}

# The specific virtual server configuration items

variable osrefcode {
  description = "operating system reference code for VMs"
  default = "DEBIAN_8_64"
}
variable domain {
  description = "domain of the VMs"
  default = ""
}

# The number of each type of virtual server that
# will be deployed using the compute.tf file.

variable compute_count {
  description = "number of VMs"
  default = "1"
}


