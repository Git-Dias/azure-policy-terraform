resource "azurerm_subscription_policy_assignment" "Azure_AI_Search" {
  name                 = var.policy
  policy_definition_id = var.definition
  subscription_id      = var.scope
}

