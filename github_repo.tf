
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.9.3"
    }
  }
}

provider "github" {
  token = "var.token"
}

resource "github_repository" "demo" {
  Name        = "first_demo_repo_cren"
  description = "My awesome codebase"

  visibility = "public"

}

output "repo-name" {
    value = github.github_repository.Name
  
}
