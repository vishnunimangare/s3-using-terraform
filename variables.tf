variable "region" {
  description = "AWS region where the S3 bucket will be created"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "force_destroy" {
  description = "Force bucket deletion even when objects exist"
  type        = bool
  default     = false
}

variable "enable_versioning" {
  description = "Enable versioning on the S3 bucket"
  type        = bool
  default     = true
}

variable "enable_archive_transitions" {
  description = "Enable Glacier transition lifecycle rule"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "KMS key ARN or ID for default encryption"
  type        = string
  default     = "alias/aws/s3"
}

variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {}
}
