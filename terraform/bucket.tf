resource "google_storage_bucket" "bucket" {
 name          = var.bucket.name
 location      = var.bucket.location
 storage_class = var.bucket.storage_class
 public_access_prevention = var.bucket.public_access_prevention
 uniform_bucket_level_access = var.bucket.uniform_bucket_level_access
}