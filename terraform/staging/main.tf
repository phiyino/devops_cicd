provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "project-tfstatefile"
    region = "us-east-1"
    key = "stage/tfstate"
  }
}

module "s3" {
    source = "../modules"
    env = var.env
  
}