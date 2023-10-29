resource "google_project_service" "run" {
  service                    = "run.googleapis.com"
  project                    = var.project_id
  disable_dependent_services = true
  disable_on_destroy         = true
}

resource "google_project_service" "artifact_registry" {
  service                    = "artifactregistry.googleapis.com"
  project                    = var.project_id
  disable_dependent_services = true
  disable_on_destroy         = true
}