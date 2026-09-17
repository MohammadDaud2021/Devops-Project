module "resource_group" {
  source = "./resource group"

  for_each = var.resource_group

  name     = each.value.name
  location = var.location
}


