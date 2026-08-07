variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name (lowercase, numbers, hyphens, 3-63 chars)"
  type        = string
}

variable "versioning_enabled" {
  description = "Whether to enable bucket versioning"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
  default     = {}
}
