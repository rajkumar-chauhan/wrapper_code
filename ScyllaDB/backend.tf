terraform {
  backend "s3" {
    bucket = "ot-micro-services-p9-raj"
    key    = "scylladb-dev/terraform.tfstate"
    region = "us-east-1"
  }
}


