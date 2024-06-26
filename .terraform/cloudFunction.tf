data "archive_file" "cloud_function" {
  type        = "zip"
  output_path = "../cloudFunction.zip"

  source {
    content = file("../cloudFunction/index.js")
    filename = "index.js"
  }

  source {
    content = file("../cloudFunction/package.json")
    filename = "package.json"
  }
}

resource "google_storage_bucket" "terf_bucket_tff" {
  name     = "vn-cloud-resume-api-challenge-bucket"
  location = "us-central1"
}

resource "google_project_service" "cloud_run_api" {
  service = "run.googleapis.com"
}

resource "google_storage_bucket_object" "source_code" {
  name   = "cloudFunction.zip"
  bucket = google_storage_bucket.terf_bucket_tff.name
  source = "../cloudFunction.zip"
}

resource "google_cloudfunctions2_function" "function" {
  name        = "cloud-resume-function"
  project = "vn-cloud-resume-api-challenge"
  location    = "us-central1"
  description = "a new function"

  build_config {
    runtime     = "nodejs16"
    entry_point = "getResumeData" # Set the entry point.
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
  depends_on = [ 
    google_project_service.cloud_run_api
  ]
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