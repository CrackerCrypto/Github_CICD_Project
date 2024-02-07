terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }
    
  }
  backend "s3" {
    bucket = "gitcicdprojectbuket01"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
  required_version = "~> 1.7.2"
}
#/home/shybal/GithubDevops/terraform/.terraform/terraform.tfstate