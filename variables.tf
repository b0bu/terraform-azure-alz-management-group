variable "management_groups" {
  type        = list(any)
  description = "a set of management group names to create"
}

variable "parent_id" {
  type        = string
  default     = null
  description = "parent mg id defining the level at which the set of management_groups should be created"
}