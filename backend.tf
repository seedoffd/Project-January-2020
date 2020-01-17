terraform {
  backend "s3" {
    bucket = "acirrustech-env-prod"
    key    = "infrustructure/dev"
    region = "us-east-1"
  }
}