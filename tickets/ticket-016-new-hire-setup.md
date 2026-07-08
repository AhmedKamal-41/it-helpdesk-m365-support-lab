# TKT-016 — New Hire Setup (Operations)

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-016 |
| **Title** | New hire account and device setup |
| **User** | Ben Foster (bfoster) — new hire |
| **Department** | Operations |
| **Category** | New Hire Setup |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"HR submitted a request to set up a new Operations intern starting Monday — needs accounts, email, and a laptop."

## Business Impact
New employee cannot start productively without accounts, email, and a configured device. Time-sensitive to the start date.

## Troubleshooting Steps
1. Received the onboarding request from HR with role, department, manager, and start date.
2. Followed the **New Hire Onboarding Checklist**.
3. Created the Entra ID account (bfoster) and assigned a Microsoft 365 Business Basic license.
4. Added the user to "Operations Team," "New Hires," and "Printer Access Group."
5. Configured Outlook, Teams, and OneDrive on a fresh Windows 11 laptop and enforced MFA registration at first sign-in.

## Root Cause
Standard onboarding — no fault. Provisioning of a new employee's identity and equipment.

## Resolution
Account, license, group memberships, mailbox, and laptop all provisioned per checklist. MFA enrollment set for first sign-in. Welcome/first-day instructions handed to the manager.

## User-Facing Final Response
> Hi team, Ben's account, email, and laptop are ready for Monday. He'll be prompted to set up MFA on first sign-in, and I've printed a one-page "Day 1 login" guide for him. Manager: let me know if he needs any extra software for his role. — IT Help Desk

## Prevention / Follow-Up Notes
- Followed standard checklist to avoid missed steps.
- Note: intern is on a Basic license — upgrade if desktop Office apps are later required.
