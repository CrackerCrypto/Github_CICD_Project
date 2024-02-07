terraform {
  backend "s3" {
    bucket = "gitcicdproject"
    key    = "terraform/backend"
    region = "us-east-2"    
  }
}