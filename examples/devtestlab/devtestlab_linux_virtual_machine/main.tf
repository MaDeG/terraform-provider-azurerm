provider "azurerm" {
  version = ">= 2.0.0, <= 3.0.0"
  skip_provider_registration = "true"
  features {}
}

resource "azurerm_dev_test_linux_virtual_machine" "example" {
  name = "example-machine"
  lab_name = "dtl_disg_expl_dynamic"
  resource_group_name = "rg_disg_infra"
  location = "uksouth"
  size = "Standard_A1_v2"
  username = "adminuser"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/G/i7T3ccps/ZN8nSr8iPRBZoD/BPH11EQ88SaoCNbPoKXg63Aq2VoJUPF3vIEGp7o/F5MPM3ynskpCGvyrsar8BbAaXaa3mKyXVUVfVRamByHhHjmtcVkgjvtTTL6ysCNJK9BRj7H2Wy6Wv+e46v51wCjVlavULrTMLQgEu8Pu6utW6BnX8+Nu1bHSp2IfLRsgegONRkzob7qu7TNbmI3HgPWBSqpkclPIm8luO8JFjFxUgerJ3LTbHoT61CZUOjRP3CwZeCGjWBb57qypYxcFiGrFZSLppiR+EnisZ9Ux0wJoSoNJUh3+Fsgc4qNidrAv5+jYihhn7W61yJ7PLR matteo@matteo-N750JV"
  lab_virtual_network_id = "/subscriptions/2714c5d6-799e-4493-9471-3278a19b2498/resourcegroups/rg_disg_infra/providers/microsoft.devtestlab/labs/dtl_disg_expl_dynamic/virtualnetworks/vnet_disg_expl_dynamic"
  lab_subnet_name = "vnet_disg_dynamic-subnet2"
  storage_type = "Standard"
  notes = "Some notes about this Virtual Machine."


  gallery_image_reference {
    publisher = "RedHat"
    offer = "RHEL"
    sku = "7-LVM"
    version = "latest"
  }
}
