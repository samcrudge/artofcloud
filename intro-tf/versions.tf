terraform {
  // Using Terraform Cloud
  backend "remote" {
    organization = "artofcloud"
    workspaces {
      name = "artofclouds"
    }
  }
  // Specificing provider to ensure no provider breaking changes.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
      // Adding tags by default to all provisioned infrastructure.
      default_tags = {
        tags = {
          Environment = "Example"
          Owner       = "ArtofCloud"
          Project     = "Example-Project"
        }
      }
    }
    // You can any addition providers under here.
  }
}

// Profile information for the AWS Provider.
provider "aws" {
  region  = var.region
  profile = var.profile
}
