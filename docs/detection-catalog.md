# Detection Catalog

| Detection | Source | Investigation |
| --- | --- | --- |
| Unauthorized API activity | CloudTrail / CloudWatch | Identify principal, source IP, API, and surrounding events |
| Suspicious AWS resource activity | GuardDuty | Review finding type, affected resource, and timeline |
| Security control failure | Security Hub | Review control, affected resource, and remediation |

## Analyst workflow

1. Confirm the finding and severity.
2. Identify the affected account, region, resource, and identity.
3. Correlate with CloudTrail events.
4. Determine whether activity is expected.
5. Contain according to the incident-response runbook.
6. Remediate and document the root cause.
