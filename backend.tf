terraform {
  backend "s3" {
    bucket = "acirrustech-env-dev"
    key    = "infracstructure/dev"
    region = "us-east-1"
  }
}