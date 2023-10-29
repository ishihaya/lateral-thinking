resource "google_iam_workload_identity_pool" "github_actions" {
  workload_identity_pool_id = local.github_actions_id
}

resource "google_iam_workload_identity_pool_provider" "github_actions" {
  workload_identity_pool_id          = google_iam_workload_identity_pool.github_actions.workload_identity_pool_id
  workload_identity_pool_provider_id = google_iam_workload_identity_pool.github_actions.workload_identity_pool_id
  oidc {
    issuer_uri = "https://token.actions.githubusercontent.com"
  }
  // see also https://github.com/google-github-actions/auth#github-token-format
  attribute_mapping = {
    "google.subject"        = "assertion.sub"
    "attribute.repository"  = "assertion.repository"
    "attribute.environment" = "assertion.environment"
    "attribute.actor"       = "assertion.actor"
    "attribute.aud"         = "assertion.aud"
  }
}