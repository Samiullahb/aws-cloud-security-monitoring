output "audit_bucket_name" {
  description = "S3 bucket storing CloudTrail audit logs"
  value       = aws_s3_bucket.audit.id
}

output "cloudtrail_arn" {
  description = "CloudTrail trail ARN"
  value       = aws_cloudtrail.main.arn
}

output "guardduty_detector_id" {
  description = "GuardDuty detector ID"
  value       = aws_guardduty_detector.main.id
}

output "securityhub_arn" {
  description = "Security Hub account ARN"
  value       = aws_securityhub_account.main.arn
}
