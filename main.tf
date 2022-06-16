module "test_spoke_azure_weu" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.2.3"

  cloud           = "Azure"
  name            = "App1"
  cidr            = "10.1.0.0/24"
  region          = "West Europe"
  account         = "azure-acc-tf"
  transit_gw      = "AZWEUAVTXGW01"
}

module "test_spoke_ali_hgz" {
    providers = {
      aviatrix = aviatrix.china
     }
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.2.3"

  cloud           = "Ali"
  name            = "App2"
  cidr            = "10.2.0.0/24"
  region          = "acs-cn-hangzhou (Hangzhou)"
  account         = "ali-acc"
  transit_gw      = "ALICHVTXGW01"
}