#This terraform file creates an ssh key that will be
#used to asssign an SSH key for each of the virtual 
#servers. 

#Doc: https://cloud.ibm.com/docs/terraform?topic=terraform-infrastructure-resources#ssh-key
resource "ibm_compute_ssh_key" "ssh_key" {
  label = "${var.ssh_label}"
  notes = "${var.ssh_notes}"
  public_key = "${var.ssh_key}"
}
