resource "google_pubsub_topic" "example" {
  project = var.project_id
  name = var.topic_name
//  kms_key_name = var.kms_key_name

  message_storage_policy {
    allowed_persistence_regions = var.allowed_persistence_regions
  }
}

resource "google_pubsub_subscription" "example" {
  project = var.project_id

  name  = var.subscription_name
  topic = google_pubsub_topic.example.id

  ack_deadline_seconds = var.ack_deadline_seconds
  message_retention_duration = var.message_retention_duration
  retain_acked_messages = false

  expiration_policy {
    ttl = var.expiration_ttl
  }

  dead_letter_policy {
    max_delivery_attempts = var.dead_letter_max_delivery_attempts
  }

  retry_policy {
    minimum_backoff = var.minimum_backoff
    maximum_backoff = var.maximum_backoff
  }

  enable_message_ordering = true

  push_config {
    push_endpoint = var.push_endpoint

    attributes = {
      x-goog-version = "v1"
    }
  }
}
