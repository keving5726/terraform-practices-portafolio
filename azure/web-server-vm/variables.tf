variable "project" {
  type        = string
  description = "The project name to use for unique resource naming"

  validation {
    condition     = length(var.project) <= 20 && can(regex("^[a-z0-9-]+$", var.project))
    error_message = "The project name must be 20 characters or less and contain only lowercase letters, numbers, and hyphens"
  }
}

variable "location" {
  type        = string
  description = "Azure location where the virtual machine will be deployed"
}

variable "environment" {
  type        = string
  description = "Deployment environment (dev, staging, prod)"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment variables must be one of: dev, staging, or prod"
  }
}

variable "owner" {
  type        = string
  description = "Owner or team responsible for these resources"
}

variable "username" {
  type        = string
  description = "The username for which the Public SSH Key should be configured"
}

variable "public_key" {
  type        = string
  description = "The Public Key which should be used for authentication"
}

variable "size" {
  type        = string
  description = "The SKU which should be used for the Virtual Machine"
}

variable "disk_configuration" {
  type        = map(string)
  description = "A map of disk configuration defining the type of caching and storage account type"
}

variable "os_image" {
  type        = map(string)
  description = "A map of OS image configuration defining the publisher, offer, sku, and version for the Virtual Machines"
}
