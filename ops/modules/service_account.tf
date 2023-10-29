resource "google_service_account" "app_api" {
  account_id   = var.app_api.service_name
  display_name = "App API Service Account"
}

resource "google_service_account" "github_actions" {
  account_id   = "github-actions"
  display_name = "GitHub Actions Service Account"
}