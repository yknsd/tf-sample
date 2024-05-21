variable "project_id" {}

variable "bucket_name" {
  type = string
}

variable "region" {}

variable "can_force_destroy" {
  type = bool
  default = true
}

variable "storage_class" {
  type = string
  default = "STANDARD"
}

variable "default_bucket_acl" {
  type = string
  default = "projectPrivate"
}
