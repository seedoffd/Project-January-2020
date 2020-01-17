terraform {
  backend "s3" {
    bucket = "acirrustech/env/dev"
    key    = "infrustructure/dev"
    region = "us-east-1"
  }
}