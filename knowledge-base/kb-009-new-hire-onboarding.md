# KB-009 — New Hire Onboarding (IT Setup)

**Category:** Identity Lifecycle | **Audience:** Level 1 Help Desk | **Related:** [KB-010 Offboarding](kb-010-offboarding-checklist.md), [Workflow: New Hire Onboarding](../workflows/new-hire-onboarding-checklist.md)

## Problem
A new employee is starting and needs an account, email, licenses, group access, and a configured device ready by their start date.

## Common Symptoms
- HR submits a new-hire request with role, department, manager, and start date.
- New employee has no account, email, or equipment yet.

## Step-by-Step Fix
1. Confirm the request details from HR: full name, department, job title, manager, start date, and required apps.
2. **Create the account** in Entra ID (username per convention: first initial + last name).
3. **Assign the correct M365 license** for the role.
4. **Add to security groups**: department team, New Hires, Printer Access, and (if remote) VPN Users.
5. **Set up the mailbox** and any shared mailbox access needed for the role.
6. **Enforce MFA registration** at first sign-in.
7. **Prepare the device**: image a Windows 11 laptop/desktop, install Office/Teams/OneDrive, and any role-specific approved software.
8. Prepare a **Day-1 login guide** and hand off to the manager.
9. Log everything in the onboarding ticket.

## Commands / Tools Used
- Entra ID / M365 admin center (create user, assign license, groups)
- `New-User-Onboarding-Checklist.ps1` (generates a per-hire checklist)
- Standard Windows 11 device image

## When to Escalate
- Special license purchases (e.g., Project, Visio) → Level 2 / budget approval.
- Non-standard access or elevated permissions → Level 2 approval.

## Notes for the User (Manager)
- Submit new-hire requests at least a few business days before the start date.
- Tell IT about any role-specific software needs up front.

## Notes for IT Technician
- Use the checklist to avoid missed steps (licenses, groups, MFA).
- Grant access via **group membership**, not one-off permissions.
