terraform {
    backend "gcs" { 
      bucket  = "terraform-state-vn-cloud-resume-api-challenge"
      prefix  = "prod"
    }
}

provider "google" {
  project = var.project
  region = var.region
}