# AWS Cloud Security Monitoring

A Terraform-based AWS security monitoring foundation designed to detect, centralize, and investigate cloud security findings.

## Security Architecture

```text
AWS Account
   |
   +--> CloudTrail ----> S3 audit logs
   |
   +--> GuardDuty -----> Security findings
   |
   +--> Security Hub --> Central findings
   |
   +--> CloudWatch ----> Metrics / alarms
```

## What this demonstrates

- AWS CloudTrail audit logging
- Amazon GuardDuty threat detection
- AWS Security Hub findings aggregation
- S3 audit-log protection
- CloudWatch operational visibility
- Terraform Infrastructure as Code
- IAM security concepts
- Security monitoring and incident-response workflow

## Security Controls

- CloudTrail enabled for API activity
- CloudTrail logs stored in a dedicated S3 bucket
- S3 public access blocked
- S3 versioning enabled for audit data
- GuardDuty enabled
- Security Hub enabled
- Security findings can be routed to downstream alerting

## Repository Structure

```text
.
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── versions.tf
├── docs/
│   ├── architecture.md
│   └── incident-response.md
├── .github/workflows/terraform.yml
├── .gitignore
└── README.md
```

## Validation

```bash
cd terraform
terraform init
terraform fmt -check -recursive
terraform validate
terraform plan
```

Do not commit AWS credentials or Terraform state.

## Incident Response Flow

1. Detect a finding in GuardDuty/Security Hub.
2. Determine affected resource, account, and severity.
3. Validate whether the finding is expected or suspicious.
4. Contain the affected resource according to the incident runbook.
5. Preserve relevant logs and evidence.
6. Remediate the underlying control gap.
7. Document the incident and verify recovery.

## Production Improvements

For a real organization, extend this foundation with an organization-wide CloudTrail strategy, centralized log archive account, KMS encryption, immutable retention controls, EventBridge alert routing, SNS/ChatOps notifications, automated remediation, and SIEM integration.

## Technologies

AWS · Terraform · CloudTrail · GuardDuty · Security Hub · S3 · CloudWatch · IAM · GitHub Actions
