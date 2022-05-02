terraform {
  // Using Terraform Cloud
  backend "remote" {
    organization = "artofcloud"
    workspaces {
      name = "art-of-cloud"
    }
  }
  // Specificing provider to ensure no provider breaking changes.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
    // You can any addition providers under here.
  }
}

// Profile information for the AWS Provider.
provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Environment = "Dev"
      Owner       = "ArtOfCloud"
      Project     = "Example"
    }
  }
}
