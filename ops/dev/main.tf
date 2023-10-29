terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = "lateral-thinking-dev-tf-state"
    prefix = "."
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.84.0"
    }
  }
}

locals {
  project_id     = "lateral-thinking-dev"
  project_region = "asia-northeast1"
}

provider "google" {
  project = local.project_id
  region  = local.project_region
  zone    = "${local.project_region}-a"
}

module "root" {
  source              = "../modules"
  project_id          = local.project_id
  project_region      = local.project_region
  tfstate_bucket_name = "lateral-thinking-dev-tf-state"
  app_env             = "dev"
  app_api = {
    service_name = "app-api"
    version      = "latest"
  }
  github_org          = "ishihaya"
  github_repo_backend = "lateral-thinking-backend"
}