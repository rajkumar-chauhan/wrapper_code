terraform {
  backend "s3" {
    bucket = "sprint5"
    key    = "Dev/Scylla.tfstate"
    region = "us-east-1"
  }
}

