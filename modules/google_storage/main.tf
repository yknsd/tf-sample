resource "google_storage_bucket" "app_storage" {
  project = var.project_id
  name = var.bucket_name
  location = var.region
  force_destroy = var.can_force_destroy

  storage_class = var.storage_class

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

// Make bucket public
//resource "google_storage_bucket_access_control" "public_bucket_rule" {
//  bucket = google_storage_bucket.app_storage.name
//  role   = "READER"
//  entity = "allUsers"
//}

resource "google_storage_bucket_acl" "app_storage_acl" {
  bucket = google_storage_bucket.app_storage.name
  default_acl = var.default_bucket_acl
}
