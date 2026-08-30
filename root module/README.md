# The following is the Terraform root module that runs the child modules.

# Configurations
- Terraform configuration uses an private, hardened S3 backend to centrally store the Terraform state file.
- CloudTrail module uses S3 module as it's source for the CloudTrail destination bucket name.
- The CloudTrail module depends on the S3 bucket being created before CloudTrail can be configured to deliver logs.
- The S3 module exposes the bucket name through an output
