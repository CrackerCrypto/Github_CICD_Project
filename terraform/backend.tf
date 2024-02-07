terraform {
  backend "s3" {
    bucket = "gitcicdprojectbuket01"
    key    = "terraform/backend"
    region = "us-east-1"    
  }
}