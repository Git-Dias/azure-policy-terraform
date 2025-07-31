resource "azurerm_policy_assignment" "api_management" {
  name                 = "API Management APIs should use only encrypted protocols"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ee7495e7-3ba7-40b6-bfee-c29e22cc75d4"
  scope                = var.scope
  display_name         = "API Management APIs should use only encrypted protocols"
  description          = "To ensure security of data in transit, APIs should be available only through encrypted protocols, like HTTPS or WSS. Avoid using unsecured protocols, such as HTTP or WS."
}


