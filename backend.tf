terraform {
  backend "s3" {
    bucket = "acirrustech-dev-env"
    key    = "infrustructure/dev"
    region = "us-east-1"
  }
}