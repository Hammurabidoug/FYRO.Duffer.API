terraform {
  backend "gcs" {
    bucket = "fyro-360715-terraform"
    prefix = "/state/fyro"
  }
}