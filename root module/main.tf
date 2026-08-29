provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket       = "terraform-bucket-8673483"
    key          = "backend/cloudtrail.security/terraform.tfstate"
    region       = "us-east-2"
    use_lockfile = true
  }
}

module "s3" {
  source = "../s3"
}

module "cloudtrail" {
  source = "../cloudtrail"

  s3_bucket_name = module.s3.bucket_name

  depends_on = [module.s3]
}