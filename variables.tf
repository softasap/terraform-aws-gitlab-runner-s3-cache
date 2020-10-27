variable "aws_region" {
  description = "AWS region."
  type        = string
}

variable "cache_expiration_days" {
  description = "Number of days before cache objects expires."
  default     = 1
  type        = string
}

variable "environment" {
  description = "Project or namespace gitlab runners fleet is associated with"
  default     = "default"
  type        = string
}


variable "tags" {
  description = "List of tags to be associated"
  default     = {}
}
