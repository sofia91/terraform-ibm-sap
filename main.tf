provider "ibm" {
   generation = 1
  region = var.region
}
/*
resource "ibm_is_vpc" "vpc1" {
  name = "vpc1"
}*/
data "ibm_is_vpc" "vpc1" {
  name = var.vpc_name
}
/*
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
*/