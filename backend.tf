terraform {
  backend "s3" {
    bucket = "terraform-suraj"
    key    = "terraform/dev/ebs"
    region = "us-east-1"
    profile = "suraj"

  }
}
