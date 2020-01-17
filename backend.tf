terraform {
  backend "s3" {
    bucket = "acirrustech-env-dev"
    key    = "infrustructure/dev"
    region = "eu-west-1"
  }
}