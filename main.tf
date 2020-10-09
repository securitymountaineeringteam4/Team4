provider "aws" {

version = 3.9

profile = "default"

region = "us-east-2"

}

module "website_s3_bucket" {

source = "./modules/"

bucket_name = "test-bucket-student-12345"

tags = { Terraform = "true"

Environment = "dev"
}

}
