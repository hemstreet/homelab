terraform {
  backend "s3" {
    bucket = "hemstreet-tf-state"
    key = "terraform/core/terraform.tfstate"
    region = "us-east-2"
    profile = "hemstreet"
    dynamodb_table = "hemstreet_terraform_state"
  }
}

provider "aws" {
  region = "us-east-2"
  profile = "hemstreet"
}
