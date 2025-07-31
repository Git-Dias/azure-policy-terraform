resource "azurerm_policy_definition" "deny_public_ip" {
  name         = "deny-public-ip"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Deny Public IPs"
  policy_rule  = file("${path.module}/policies/deny-public-ip.json")
}

resource "azurerm_policy_assignment" "deny_public_ip_assignment" {
  name                 = "deny-public-ip-assignment"
  policy_definition_id = azurerm_policy_definition.deny_public_ip.id
  scope                = var.scope
}

