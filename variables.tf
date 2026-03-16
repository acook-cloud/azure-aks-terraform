variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"
}

variable "project_name" {
  description = "Used as a prefix for all resource names"
  type        = string
}

variable "subscription_id" {
  description = "Your Azure subscription ID"
  type        = string
}