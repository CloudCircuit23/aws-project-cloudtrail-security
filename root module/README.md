# The following is the Terraform root module that runs the child modules.

# Configurations
- Terraform configuration uses an private, hardened S3 backend to centrally store the Terraform state file.
- CloudTrail module uses S3 module as it's source for the CloudTrail destination bucket name.
