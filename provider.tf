provider "aws" {
  shared_config_files = [ "~/.aws/credentials" ]
  shared_credentials_files = [ "~/.aws/credentials" ]
  profile = var.profile
  region  = var.region-master
  alias   = "region-master"
}
provider "aws" {
  shared_config_files = [ "~/.aws/credentials" ]
  shared_credentials_files = [ "~/.aws/credentials" ]
  profile = var.profile
  region  = var.region-worker
  alias   = "region-worker"
}


