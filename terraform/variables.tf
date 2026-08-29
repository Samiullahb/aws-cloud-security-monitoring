variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "cloud-security-monitoring"
}

variable "trail_name" {
  description = "CloudTrail trail name"
  type        = string
  default     = "organization-audit-trail"
}
