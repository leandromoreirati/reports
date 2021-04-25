provider "aws" {
  region = var.region
  profile = var.profile
}

terraform {
  required_version = ">= 0.12.20"
  
  backend "s3" {
    bucket = "lms-infraestrutura-tfstate"
    key    = "terraform/teste-tfstate.tfstate"
    region = "us-east-1"
    encrypt = "true"
    profile = "lmoreira"
  }
}