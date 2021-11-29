# Configure the OVHcloud Provider
provider "ovh" {
  version            = "~> 0.16"
  endpoint           = "ovh-eu"
  application_key    = "xxx"
  application_secret = "xxx"
  consumer_key       = "xxx"
}

provider "local" {}