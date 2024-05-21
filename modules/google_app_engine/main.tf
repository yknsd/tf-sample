resource "google_app_engine_standard_app_version" "app" {
  project = var.project_id
  version_id = var.version_id
  service = var.service_name
  runtime = var.runtime

  entrypoint {
    shell = var.entrypoint_shell
  }

  deployment {
    zip {
      source_url = var.source_url
    }
  }

  instance_class = var.instance_class

  automatic_scaling {
    max_concurrent_requests = var.max_concurrent_requests
    min_idle_instances = var.min_idle_instance
    max_idle_instances = var.max_idle_instance
    standard_scheduler_settings {
      target_cpu_utilization = var.target_cpu_utilization
      target_throughput_utilization = var.target_throughput_utilization
      min_instances = var.min_instances
      max_instances = var.max_instances
    }
  }
}
