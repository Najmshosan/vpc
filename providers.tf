provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.7"
}

terraform {
  required_version = ">= 0.12.12"

  backend "s3" {
    bucket  = "test-adnin3-bucket-resource"
    key     = "adnin_key"
    region  = "eu-west-2"
    encrypt = "true"
  }

}