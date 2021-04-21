data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-states-otus-sha"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = "mSpoSLgDC8D7FzOCySEp"
    secret_key = "hZD6ksjw3Akl1KJh6qBHsdnTQpiNnttanoWaVQfa"
    
    skip_region_validation      = true
    skip_credentials_validation = true


  }
}
