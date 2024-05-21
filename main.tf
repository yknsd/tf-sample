terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_project" "sample_project" {
  name = var.project_name
  project_id = var.project_id
}

module "app_engine" {
  source = "./modules/google_app_engine"

  project_id = var.project_id
  project_name = var.project_name
  region = var.region

  source_url = ""
}
