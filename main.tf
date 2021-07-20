terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.0"
    }
  }
}

#variable "heroku_email" {
#  description = "Heroku email address"
#}

#variable "heroku_api_token" {
#  description = "Heroku API token"
#}

# Configure the Heroku provider
#provider "heroku" {
#  email   = var.heroku_email
#  api_key = var.heroku_api_token
#}

# Create a new application
resource "heroku_app" "dev" {
  name      = "vipotin-devops-project"
  region    = "eu"
}

terraform {
  backend "remote" {
    organization = "vipotin"

    workspaces {
      name = "my-project-ws"
    }
  }
}
