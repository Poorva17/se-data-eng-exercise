# Create new storage bucket in the US
# location with Standard Storage


provider "google" {
  project     = "ee-india-se-data"
  region      = "us-central1"
}

resource "google_storage_bucket" "static" {
 name          = "se-data-landing-poorva"
 location      = "US"
 storage_class = "STANDARD"
 public_access_prevention = "enforced"
 uniform_bucket_level_access = true
}

