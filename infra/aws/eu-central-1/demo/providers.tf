terraform {
  required_providers {
    aws = {
      version = "~> 3.0"
      source  = "hashicorp/aws"
    }
    template = {
      version = "~> 2.1"
    }
    github = {
      source  = "integrations/github"
      version = ">= 4.5.0"
    }
  }
}

provider "aws" {
  region                  = "eu-central-1"
  profile                 = "EuCentral1User"
  shared_credentials_file = "~/.aws/credentials"
}

provider "github" {
  token        = local.github_token
  organization = local.github_username
}

provider "template" {}

