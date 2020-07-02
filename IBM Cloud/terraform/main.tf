
#This terraform file defines the terraform provider that will be used
#to deploy this architecture. In this case, the IBM Cloud provider is
#the only provider that will be used. The terraform version required is 
#also defined


#Docs: https://cloud.ibm.com/docs/terraform?topic=terraform-provider-reference
provider "ibm" {
  region = "${var.ibm_region}"
}

#Doc: https://www.terraform.io/docs/configuration/terraform.html
terraform {
  required_version = ">= 0.12"
}
