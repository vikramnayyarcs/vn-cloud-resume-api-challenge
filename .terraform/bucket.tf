resource "google_storage_bucket" "github-actions-bucket" {
  project = "vn-cloud-resume-api-challenge"
  name = "github-actions-bucket"
  force_destroy = false
  uniform_bucket_level_access = true
  location = "us-central1"
#   labels = local.labels
}