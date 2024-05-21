variable "project_id" {}

variable "region" {}

variable "project_name" {}

variable "version_id" {
  type = string
  default = "v1"
}

variable "service_name" {
  type = string
  default = "default"
}

variable "runtime" {
  type = string
  default = "nodejs20"
}

variable "entrypoint_shell" {
  type = string
  default = "npm run start"
}

variable "source_url" {
  type = string
}

variable "instance_class" {
  type = string
  default = "F1"
}

variable "max_concurrent_requests" {
  type = number
  default = 10
}

variable "min_idle_instance" {
  type = number
  default = 0
}

variable "max_idle_instance" {
  type = number
  default = 1
}

variable "target_cpu_utilization" {
  type = number
  default = 0.5
}

variable "target_throughput_utilization" {
  type = number
  default = 0.75
}

variable "min_instances" {
  type = number
  default = 0
}

variable "max_instances" {
  type = number
  default = 1
}
