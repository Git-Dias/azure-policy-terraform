variable "scope" {
  description = "Scope onde a policy será aplicada (ex: subscription ou resource group)"
  type        = string
}

variable "policy" {
  description = "Policy a ser aplicada"
  type        = string
}

variable "definition" {
  description = "ID da Definition"
  type        = string
}