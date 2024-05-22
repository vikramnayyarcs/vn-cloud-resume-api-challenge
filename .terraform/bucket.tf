resource "google_storage_bucket" "raw" {
  project = "vn-cloud-resume-api-challenge"
  name = "raw"
  force_destroy = false
  uniform_bucket_level_access = true
  location = "us-central1"
#   labels = local.labels
}