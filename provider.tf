provider "azurerm" {
  features {}
  subscription_id = "a9bc3c93-b459-4ffb-8364-38ff9554f652"
}

terraform {
  backend "azurerm" {}
}

provider "vault" {
  address = "http://vault.yourtherapist.in:8200"
  token   = var.token
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
