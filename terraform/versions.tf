terraform {
  required_version = ">= 0.12"

  required_providers {
    provider "yandex" {
      source  = "yandex-cloud/yandex"
      version = ">= 0.35.0"
    
    }

  
  }

}
