terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-states-otus-sha"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = "mSpoSLgDC8D7FzOCySEp"
    secret_key = ""
    
    skip_region_validation      = true
    skip_credentials_validation = true

  }

}
