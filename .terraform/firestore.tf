resource "google_firestore_database" "database" {
  project     = "vn-cloud-resume-api-challenge"
  name        = "(default)"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"
}

/*
ATTEMPTED TO PROGRAMATICALLY ADD RESUME DATA HERE BUT FAILED.
*/