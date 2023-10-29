resource "google_artifact_registry_repository" "containers" {
  location      = var.project_region
  repository_id = "containers"
  description   = "docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = false
  }
}