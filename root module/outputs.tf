output "bucket_name" {
  value = module.s3.bucket_name
}

output "cloudtrail_arn" {
  value = module.cloudtrail.cloudtrail_arn
}