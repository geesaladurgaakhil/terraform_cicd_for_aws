# Copy this file to terraform.tfvars and fill in your own values.
# bucket_name MUST be globally unique across all of AWS,
# lowercase letters, numbers and hyphens only, 3-63 characters.

bucket_name        = "my-terraform-practice-bucket-001"
aws_region          = "ap-south-1"
versioning_enabled = true
environment         = "dev"
