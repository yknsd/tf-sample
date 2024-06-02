variable "project_id" {
  type = string
}

variable "task_name" {
  type = string
  default = "cloud-tasks-queue-example"
}

variable "location" {
  type = string
  default = "asia-northeast1"
}

variable "max_dispatches_per_second" {
  type = number
  default = 0.01
}

variable "max_concurrent_dispatches" {
  type = number
  default = 1
}

variable "max_attempts" {
  type = number
  default = 1
}

variable "max_retry_duration" {
  type = string
  default = "5s"
}
