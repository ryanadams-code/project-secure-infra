terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "example-project-id"
  region  = "asia-southeast2"
}

# NOTE:
# This file is a learning skeleton only.
# No resources are created in this project.
