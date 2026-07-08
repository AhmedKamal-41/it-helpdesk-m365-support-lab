# TKT-017 — Offboarding Departing Employee

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-017 |
| **Title** | Offboard departing Operations intern |
| **User** | Ben Foster (bfoster) — departing |
| **Department** | Operations |
| **Category** | Offboarding |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"HR notified IT that the Operations intern's last day is today. Please disable access and preserve their files."

## Business Impact
Security and compliance — access must be revoked promptly on the last day, while important data must be retained for the manager.

## Troubleshooting Steps
1. Received the offboarding request from HR with the confirmed termination date/time.
2. Followed the **Employee Offboarding Checklist**.
3. Disabled the Entra ID account and reset the password to revoke all active sessions.
4. Converted the mailbox to a shared mailbox and delegated access to the manager (Daniel Ortiz) for continuity.
5. Set OneDrive files to be retained and delegated, removed group memberships, and flagged the license for reclamation.

## Root Cause
Standard offboarding — planned departure. No incident.

## Resolution
Account disabled, sessions revoked, mailbox and OneDrive preserved and delegated to the manager, groups removed, and license queued for reclaim after the retention window. Device collected for reimaging.

## User-Facing Final Response
> Hi HR, offboarding for Ben is complete. His account is disabled, his email and files are preserved and accessible to his manager, and his laptop has been collected for reimaging. The license will be freed after the standard retention period. — IT Help Desk

## Prevention / Follow-Up Notes
- Account **disabled**, not deleted, during the retention window (best practice).
- License reclaim reminder set for after retention to control costs.
- Device queued for reimaging before reissue.
