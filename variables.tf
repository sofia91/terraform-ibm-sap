variable "region" {
  description = "Region for default"
  type        = string
  default     = "us-south-1"
}

variable "vpc_name" {
  description = "Name for vpc"
  type        = string
  default     = "test"
}

variable "resource_group" {
  description = "Group for default"
  type        = string
  default     = "Default"
}
