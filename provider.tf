# Define the MongoDB Atlas and AWS Providers
terraform {
    backend "s3" {
    bucket = "piklesfastfood"
    key    = "BDTerraformMongo/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.13"
}

provider "aws" {
  region  = var.regionDefault

  default_tags {
    tags = var.tags
  }
}