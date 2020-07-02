/*provider "ibm" {
   generation = 1
  region = var.region
}

resource "ibm_is_vpc" "vpc1" {
  name = "vpc1"
}
resource "ibm_is_vpc" "vpc1" {
  name = var.vpc_name
  resource_group ="Default"
}
/*
data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource ibm_is_security_group "sg1" {
  name = "teat1-sg1"
  vpc  = ibm_is_vpc.vpc1.id
}
*/

resource "ibm_resource_group" "cos_group" {
name     = "prod"
}
resource "ibm_resource_instance" "cos_instance" {
name              = "cos-instance"
resource_group_id = ibm_resource_group.cos_group.id
service           = "cloud-object-storage"
plan              = "standard"
location          = "global"
}
resource "ibm_cos_bucket" "standard-ams03" {
bucket_name          = "aremola655"
resource_instance_id = ibm_resource_instance.cos_instance.id
region_location      = "us-south"
storage_class        = "standard"
}
