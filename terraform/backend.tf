terraform {
    backend "s3" {
        bucket = "gitcicdprojectbuket01"
        key    = "terraform.tfstate"
        region = "us-east-2"
  }

  required_version = "~> 1.6.3"
}
##
##
##
