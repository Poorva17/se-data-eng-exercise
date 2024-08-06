variable "project" {
  default = "ee-india-se-data"
}

variable "bucket" {
  type = object({
    name                        = string
    location                    = string
    storage_class               = string
    public_access_prevention    = string
    uniform_bucket_level_access = bool
  })
  default = {
    name                        = "se-data-landing-poorva"
    location                    = "US",
    storage_class               = "STANDARD",
    public_access_prevention    = "enforced",
    uniform_bucket_level_access = true
  }
}

variable "dataset" {
  type = object({
    dataset_id  = string,
    description = string,
    location    = string,
    labels = map(string),
    access = map(string)
  })
  default = {
    dataset_id  = "movies_data_poorva",
    description = "Movies Data",
    location    = "US",
    labels = {
      env = "default"
    },
    access = {
      role   = "READER"
      domain = "hashicorp.com"
    }
  }
}

variable "table" {
  default = "movies_raw"
}