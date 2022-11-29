resource "azurerm_management_group" "mg" {
  for_each = toset(var.management_groups)

  display_name               = each.value
  parent_management_group_id = var.parent_id
}

// var parent_id = map[string]string{"management_group_name": "management_group_id"}
output "parent_id" {
  value = {
    for mg in toset(var.management_groups):
    mg => azurerm_management_group.mg[mg].id
  }
}