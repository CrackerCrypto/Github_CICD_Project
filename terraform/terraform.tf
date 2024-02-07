terraform{
    backend s3{
        bucket = "gitcicdprojectbucket"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}