resource "azurerm_subscription_policy_assignment" "api_management" {
  name                 = "API Management APIs should use only encrypted protocols"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ee7495e7-3ba7-40b6-bfee-c29e22cc75d4"
  subscription_id      = var.scope
}


