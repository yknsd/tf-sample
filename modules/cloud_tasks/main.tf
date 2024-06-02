resource "google_cloud_tasks_queue" "default" {
  project = var.project_id
  name = var.task_name
  location = var.location

  rate_limits {
    max_dispatches_per_second = var.max_dispatches_per_second
    max_concurrent_dispatches = var.max_concurrent_dispatches
  }

  retry_config {
    max_attempts = var.max_attempts
    max_retry_duration = var.max_retry_duration
  }
}
