terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo01"
    container_name       = "tfstatefile01"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
