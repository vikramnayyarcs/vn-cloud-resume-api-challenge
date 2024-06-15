resource "google_project" "project" {
  project_id = "vn-cloud-resume-api-challenge"
  name       = "vn-cloud-resume-api-challenge"
}

resource "google_firestore_database" "database" {
  project     = "vn-cloud-resume-api-challenge"
  name        = "cloud-resume-challenge-firestore-database"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"
}

resource "google_firestore_document" "resume" {
  project     = google_project.project.project_id
  database    = google_firestore_database.database.name
  collection  = "resumes"
  document_id = "1"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
