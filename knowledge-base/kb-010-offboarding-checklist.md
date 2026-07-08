# KB-010 — Offboarding Checklist (IT)

**Category:** Identity Lifecycle / Security | **Audience:** Level 1 Help Desk | **Related:** [KB-009 Onboarding](kb-009-new-hire-onboarding.md), [Workflow: Offboarding](../workflows/employee-offboarding-checklist.md)

## Problem
An employee is leaving and their access must be revoked promptly and securely while important data is preserved.

## Common Symptoms
- HR notifies IT of a departure with a last-day date/time.
- Need to revoke access without losing the person's email and files.

## Step-by-Step Fix
1. Confirm the **exact termination date/time** from HR before disabling anything.
2. At the effective time, **disable the account** in Entra ID (disable, don't delete yet).
3. **Reset the password / revoke sessions** so active logins are cut off immediately.
4. **Block sign-in** and remove the user from **security/distribution groups**.
5. **Preserve the mailbox**: convert to a **shared mailbox** and delegate to the manager for continuity.
6. **Preserve OneDrive**: delegate/transfer access to the manager or retain per policy.
7. **Collect and reimage** the device; recover any company hardware.
8. **Reclaim the license** after the retention period to control cost.
9. Log all actions in the offboarding ticket.

## Commands / Tools Used
- Entra ID → Users (disable, reset password, remove groups, block sign-in)
- Exchange admin center (convert to shared mailbox, delegate)
- OneDrive admin (access delegation / retention)

## When to Escalate
- Involuntary/urgent terminations requiring immediate lockout → coordinate with Level 2 + HR.
- Legal hold / eDiscovery requirements → Level 2 / compliance.

## Notes for the User (Manager / HR)
- Give IT the precise last-day time so access is cut at the right moment.
- Tell IT if the manager needs the departing person's email/files.

## Notes for IT Technician
- **Disable, don't delete** during the retention window — allows data recovery and license reclaim.
- Revoke active sessions, not just the password, to force immediate sign-out.
