terraform {
  required_version = ">= 0.13"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.33.0"
    }
    kubectl = {
      source  = "alekc/kubectl"
      version = "2.1.2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.16.1"
    }
  }
}