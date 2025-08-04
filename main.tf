resource "azurerm_subscription_policy_assignment" "api_management" {
  name                 = "API Management APIs should use only encrypted protocols"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ee7495e7-3ba7-40b6-bfee-c29e22cc75d4"
  subscription_id      = var.scope
}

resource "azurerm_subscription_policy_assignment" "k8s_images" {
  name                 = "Kubernetes cluster containers should only use allowed images"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/febd0533-8e55-448f-b837-bd0e06f16469"
  subscription_id      = var.scope
}

resource "azurerm_subscription_policy_assignment" "cognitive_services" {
  name                 = "Cognitive Services accounts should use a managed identity"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/fe3fd216-4f83-4fc1-8984-2bbec80a3418"
  subscription_id      = var.scope
}

