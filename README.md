# The following Terraform code will create an audit trail that sends AWS management events to a private, hardened S3 bucket
# Security Objectives
- Enable CloudTrail logging for AWS Account Activity.
- Store logs in a dedicated S3 bucket.
- Prevent public access to CloudTrail logs.
- Enable S3 encryption for log data.
- Enable S3 versioning to help protect log integrity.
- Use Terraform to deploy the baseline consistently.
