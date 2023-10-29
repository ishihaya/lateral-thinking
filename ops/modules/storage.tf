resource "google_storage_bucket" "tfstate" {
  name                        = var.tfstate_bucket_name
  project                     = var.project_id
  location                    = var.project_region
  default_event_based_hold    = false
  force_destroy               = false
  requester_pays              = false
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
}