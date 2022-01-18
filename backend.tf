# Name: backend.tf
# Owner: Saurav Mitra
# Description: This terraform config will Configure Terraform Backend
# https://www.terraform.io/docs/language/settings/backends/index.html

terraform {
  backend "s3" {
    bucket = "BUCKETNAME"
    key    = "tf-backend/terraform.tfstate"
    region = "REGION"
  }
}
