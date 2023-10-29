resource "google_cloud_run_v2_service" "app_api" {
  name     = var.app_api.service_name
  project  = var.project_id
  location = var.project_region
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    service_account = google_service_account.app_api.email
    scaling {
      min_instance_count = 1
      max_instance_count = 10
    }
    containers {
      image = "asia-northeast1-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.containers.name}/${local.server_docker_image_name}:${var.app_api.version}"
    }
  }

  traffic {
    type    = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
    percent = 100
  }
}

resource "google_cloud_run_service_iam_member" "app_api_noauth" {
  service  = google_cloud_run_v2_service.app_api.name
  project  = google_cloud_run_v2_service.app_api.project
  location = google_cloud_run_v2_service.app_api.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}