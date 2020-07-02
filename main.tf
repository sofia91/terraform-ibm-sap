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

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource ibm_is_security_group "sg1" {
  name = "teat1-sg1"
  vpc  = ibm_is_vpc.vpc1.id
}


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
bucket_name          = "1mybucket1"
resource_instance_id = ibm_resource_instance.cos_instance.id
region_location      = "us-south"
storage_class        = "standard"
}
*/
   
resource "ibm_compute_bare_metal" "hourly-bm1" {
  hostname             = "hourly-bm1"
  domain               = "sopra.cloud"
  os_reference_code    = "REDHAT_7_64"
  datacenter           = "ams03"
  network_speed        = 100   # Optional
  hourly_billing       = true  # Optional
  private_network_only = false # Optional
  fixed_config_preset  = "S1270V6_16GB_1X800GB_SATA_NORAID"

  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
}
