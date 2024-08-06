resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.dataset.dataset_id
  description                 = var.dataset.description
  location                    = var.dataset.location

  labels = {
    env = var.dataset.labels.env
  }

  access {
    role   = var.dataset.access.role
    domain = var.dataset.access.domain
  }
}