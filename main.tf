terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.0.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}

resource "google_project" "sample_project" {
  project_id = var.project_id
  name = var.project_name
  billing_account = var.billing_account
}

module "compute_engine" {
  source = "./modules/compute_engine"

  project_id = var.project_id
}

//module "app_engine" {
//  source = "./modules/google_app_engine"
//
//  project_id = var.project_id
//  project_name = var.project_name
//  region = var.region
//
//  source_url = var.app_engine_source_url
//}

module "cloud_storage" {
  source = "./modules/google_storage"

  project_id = var.project_id
  region = var.region
  bucket_name = var.cloud_storage_bucket_name
}

//module "cloud_kms" {
//  source = "./modules/cloud_kms"
//
//  project_id = var.project_id
//}

//module "cloud_pub_sub" {
//  source = "./modules/cloud_pub_sub"
//
//  project_id = var.project_id
//}

//module "cloud_tasks" {
//  source = "./modules/cloud_tasks"
//
//  project_id = var.project_id
//}
