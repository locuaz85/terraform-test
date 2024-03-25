clone {
  template_uuid = "${data.vsphere_virtual_machine.template.id}"
  customize {
    linux_options {
      host_name = "terraform-test"
      domain    = "test.internal"
    }
    network_interface {}
  }
}
