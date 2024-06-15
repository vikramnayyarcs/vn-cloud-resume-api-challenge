resource "google_firestore_database" "database" {
  project     = "vn-cloud-resume-api-challenge"
  name        = "cloud-resume-challenge-firestore-database"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"
}