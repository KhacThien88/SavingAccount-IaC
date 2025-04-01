terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    shared_config_files = [ "~/.aws/config" ]
    shared_credentials_files = [ "~/.aws/credentials" ]
    region  = "ap-northeast-2"
    profile = "default"
    key     = "terraformstatefile"
    bucket  = "terraformstatebackendkt-iac-1"
  }
}


