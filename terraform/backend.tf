terraform {
    backend "s3" {
        bucket = "gitcicdprojectbuket01"
        key    = "terraform.tfstate"
        region = "us-east-2"
  }
}
##
##
##
