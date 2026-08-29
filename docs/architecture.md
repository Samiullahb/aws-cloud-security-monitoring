# Security Monitoring Architecture

## Data flow

1. AWS API activity is recorded by CloudTrail.
2. CloudTrail delivers audit logs to a private S3 bucket with versioning and encryption.
3. GuardDuty analyzes supported AWS activity and produces security findings.
4. Security Hub aggregates security findings and security-control results.
5. CloudWatch provides operational monitoring and can be extended with EventBridge/SNS alerting.

## Security boundaries

- Audit logs are not publicly accessible.
- CloudTrail log-file validation is enabled.
- GuardDuty and Security Hub are enabled through Terraform.
- Long-lived AWS credentials are not required by the infrastructure code.

## Production architecture extension

For a multi-account organization, centralize security services and audit logs in dedicated security/log-archive accounts and use AWS Organizations to enforce baseline controls.
