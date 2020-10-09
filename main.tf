provider "aws" {
  version = 3.9
  profile = "default"
  region  = "us-east-2"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

module "website_s3_bucket" {
  source = "./modules/"
  bucket_name = "test-bucket-student-12345"
    tags = {
    Terraform   = "true"
        Environment = "dev"
    }
 }
