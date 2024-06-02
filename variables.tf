variable "project_id" {
  type = string
  sensitive = true
}

variable "region" {
  type = string
  default = "asia-northeast1"
}

variable "project_name" {
  type = string
  sensitive = true
}

variable "billing_account" {
  type = string
  sensitive = true
}

variable "app_engine_source_url" {
  type = string
  sensitive = true
}

variable "cloud_storage_bucket_name" {
  type = string
  sensitive = true
}
