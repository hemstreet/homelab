terraform {
  backend "s3" {
    bucket         = "hemstreet-tf-state"
    key            = "terraform/core/terraform.tfstate"
    region         = "us-east-2"
    profile        = "hemstreet"
    dynamodb_table = "hemstreet_terraform_state"
  }
}

module "vars" {
  source = "../vars"
}

provider "aws" {
  region  = "us-east-2"
  profile = "hemstreet"
}

locals {
  k8s = {
    context     = "microk8s"
    config_path = "~/.kube/additional-configs/config"
  }
}

provider "kubernetes" {
  config_path    = local.k8s.config_path
  config_context = local.k8s.context
}

provider "kubectl" {
  config_path = local.k8s.config_path
  config_context = local.k8s.context
}

provider "helm" {
  kubernetes {
    config_path    = local.k8s.config_path
    config_context = local.k8s.context
  }
}