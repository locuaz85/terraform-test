data "vsphere_datacenter" "dc" {
  name = "SDDC-Datacenter"
}
data "vsphere_datastore" "datastore" {
  name          = "WorkloadDatastore"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_compute_cluster" "cluster" {
    name          = "Cluster-1"
    datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_resource_pool" "pool" {
  name          = "Compute-ResourcePool"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_network" "network" {
  name          = "segment"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_virtual_machine" "template" {
  name          = "Windows Template"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
