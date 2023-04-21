terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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"
}
resource "github_repository" "example" {
  name        = "terraform1"
  description = "My awesome codebase"

  visibility = "public"

  
}