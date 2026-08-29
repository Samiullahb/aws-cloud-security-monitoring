# Incident Response Runbook

## Triage

1. Identify the finding source and severity.
2. Identify the affected AWS account, region, resource, and principal.
3. Check CloudTrail activity around the reported event.
4. Determine whether the activity is authorized.

## Containment

Use the least disruptive containment action appropriate to the finding. Examples include restricting a security group, disabling an exposed credential through the approved identity process, or isolating a compromised workload.

## Investigation

Correlate GuardDuty/Security Hub findings with CloudTrail and relevant application logs. Preserve evidence before making destructive changes when the incident requires forensic investigation.

## Recovery

Remove the root cause, restore affected services from trusted state where necessary, rotate compromised credentials, and verify security controls.

## Lessons learned

Record the timeline, root cause, affected resources, containment actions, recovery actions, and preventive controls. Convert recurring findings into automated controls where practical.
