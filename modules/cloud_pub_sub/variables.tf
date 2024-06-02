variable "project_id" {
  type = string
  sensitive = true
}

variable "topic_name" {
  type = string
  default = "example-topic"
}

variable "allowed_persistence_regions" {
  type = list(string)
  default = [
    "asia-northeast1"
  ]
}

//variable "kms_key_name" {
//  type = string
//  sensitive = true
//}

variable "subscription_name" {
  type = string
  default = "example-subscription"
}

variable "ack_deadline_seconds" {
  type = number
  default = 10
}

variable "message_retention_duration" {
  type = string
  default = "600s"
}

variable "expiration_ttl" {
  type = string
  default = "3.5s"
}

variable "dead_letter_max_delivery_attempts" {
  type = number
  default = 5
}

variable "minimum_backoff" {
  type = string
  default = "10s"
}

variable "maximum_backoff" {
  type = string
  default = "60s"
}

variable "push_endpoint" {
  type = string
  default = "https://example.com/push"
}
