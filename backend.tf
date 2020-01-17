terraform {
  backend "s3" {
    bucket = "acirrustech-env-prod"
    key    = "infrustructure/dev"
    region = "eu-west-1"
  }
}