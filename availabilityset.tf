variable "avname" {}
variable "rgname" {}
variable "rglocation" {}
#variable "tags" {}


resource "azurerm_availability_set" "example" {
  name                = var.avname
  location            = var.rglocation
  resource_group_name = var.rgname
  #tags = var.tags
}

output "avoname" {
  value = azurerm_availability_set.example.name
}
