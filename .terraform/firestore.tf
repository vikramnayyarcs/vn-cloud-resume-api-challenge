resource "google_firestore_database" "database" {
  project     = "vn-cloud-resume-api-challenge"
  name        = "cloud-resume-challenge-firestore-database"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"
}

resource "google_firestore_document" "resume" {
  project     = "vn-cloud-resume-api-challenge"
  database    = google_firestore_database.database.name
  collection  = "resumes"
  document_id = "12"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
