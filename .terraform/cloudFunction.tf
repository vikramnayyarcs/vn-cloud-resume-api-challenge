resource "google_storage_bucket" "terf_bucket_tff" {
  name     = "vn-cloud-resume-api-challenge-bucket"
  project  = "vn-cloud-resume-api-challenge"
  location = "us-central1"
}

resource "google_storage_bucket_object" "source_code" {
  name   = "cloudFunction.zip"
  bucket = google_storage_bucket.terf_bucket_tff.name
  source = "../cloudFunction.zip"
}

resource "google_cloudfunctions_function" "fun_from_tff" {
  name        = "vn-cloud-resume-api-challenge-cloud-function"
  region      = "us-central1"
  project     = "158947983886"
  runtime     = "nodejs16"
  description = "Cloud Function created with Terraform for the Cloud Resume API Challenge."

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.terf_bucket_tff.name
  source_archive_object = google_storage_bucket_object.source_code.name

  trigger_http = true
  entry_point  = "getResumeData"

  depends_on = [google_storage_bucket_object.source_code]
}

resource "google_cloudfunctions_function_iam_member" "allow_access_tff" {
  region         = "us-central1"
  project        = "cloud-resume-api-challenge"
  cloud_function = google_cloudfunctions_function.fun_from_tff.name
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}

resource "google_cloudfunctions2_function" "function" {
  name        = "abc"
  project        = "cloud-resume-api-challenge"
  location    = "us-central1"
  description = "a new function"

  build_config {
    runtime     = "nodejs16"
    entry_point = "getResumeData" # Set the entry point 
    source {
      storage_source {
        bucket = google_storage_bucket.terf_bucket_tff.name
        object = google_storage_bucket_object.source_code.name
      }
    }
  }

  service_config {
    min_instance_count             = 1
    max_instance_count             = 10
    available_memory               = "256M"
    timeout_seconds                = 60
    all_traffic_on_latest_revision = true
  }
}

output "function_uri" {
  value = google_cloudfunctions2_function.function.service_config[0].uri
}

resource "google_cloud_run_service_iam_binding" "default" {
  location = google_cloudfunctions2_function.function.location
  service  = google_cloudfunctions2_function.function.name
  role     = "roles/run.invoker"
  members  = ["allUsers"]
}