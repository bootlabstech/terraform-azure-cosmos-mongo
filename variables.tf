// required variables
variable "resource_group_name" {
  type        = string
  description = "name of the resource group where all the resources will be created"
}

variable "name" {
  type        = string
  description = "name of the resource group where all the resources will be created"
}

variable "offer_type" {
  type        = string
  description = "name of the resource group where all the resources will be created"
}

variable "consistency_level" {
  type        = string
  description = "name of the resource group where all the resources will be created"
}

variable "mongodb_throughput" {
  type        = number
  description = "name of the resource group where all the resources will be created"
  default = 400
}

variable "max_interval_in_seconds" {
  type        = number
  description = "name of the resource group where all the resources will be created"
  default = 5

}

variable "max_staleness_prefix" {
  type        = number
  description = "name of the resource group where all the resources will be created"
  default = 100

}

variable "kind" {
  type        = string
  description = "Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB and MongoDB"
  default     = "MongoDB"
}

variable "capabilities" {
  type        = string
  description = "Configures the capabilities to enable for this Cosmos DB account"
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists˝"
}
