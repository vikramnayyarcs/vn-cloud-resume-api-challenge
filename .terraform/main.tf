terraform {
    backend "gcs" { 
      bucket  = "terraform-state-vn-cloud-resume-api-challenge"
      prefix  = "prod"
    }
}

provider "google" {
  project = "vn-cloud-resume-api-challenge"
  region = "us-central1"
}