provider "google" {
  credentials = file["terraform-sa-key.json"]
  project = "fyro-360715"
  region = "us-central1"
  zone = "us-central1-c"
  version = "~> 3.30"
}

# IP ADDRESS

# NETWORK

# FIREWALL RULE

# OS IMAGE

# COMPUTE ENGINE INSTANCE