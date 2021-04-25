variable "region" {
  default = "us-east-1"
}

variable "environment" {
  default = ""
}

variable "profile" {
  default = "lmoreira"
}

variable "business_owner" {
  default = "leandromoreirati"
}

variable "acl" {
  default = "private"
}

variable "versioning" {
  default = "false"
}

variable "logging_rules" {
  default = []
  description = "S3 Logging dynamic configuration block."
}

variable "lifecycle_rules" {
  default     = {}
  description = "Enable or disable lifecycle bucket policy, could be create_before_destroy, prevent_destroy or ignore_changes."
}

variable "bucket" {
  default     = ""
  description = "The name of the bucket to which to apply the policy."
}

variable "policy" {
  default     = ""
  description = "The text of the policy."
}

variable "application" {
  default = "manhattan"
}

variable "create_bucket_policy" {
  default="false"
}