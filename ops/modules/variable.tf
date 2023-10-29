variable "project_id" {}
variable "project_region" {}
variable "tfstate_bucket_name" {}
variable "app_env" {}
variable "app_api" {
  type = object({
    service_name = string
    version      = string
  })
}
variable "github_org" {}
variable "github_repo_backend" {}