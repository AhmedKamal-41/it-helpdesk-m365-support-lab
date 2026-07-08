# TKT-014 — MFA Not Sending Codes

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-014 |
| **Title** | Not receiving MFA approval prompts |
| **User** | Ryan Evans (revans) |
| **Department** | Sales |
| **Category** | MFA |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I'm trying to sign in but I never get the approval notification on my phone, so I can't get past the login screen."

## Business Impact
User cannot complete sign-in and is blocked from all M365 services.

## Troubleshooting Steps
1. Verified identity per security policy before any MFA changes.
2. Confirmed the user still had the Microsoft Authenticator app installed but had recently changed phones.
3. Found the Authenticator on the new phone was not registered to the account.
4. Followed the MFA Reset Workflow: had user attempt "I can't use my Microsoft Authenticator app right now" and used a verified backup phone number for a one-time SMS code to sign in.
5. Once signed in, guided user to re-add the account in Authenticator on the new phone and set it as default.

## Root Cause
User switched to a new phone without migrating the Microsoft Authenticator registration, so push notifications went to a device no longer in use.

## Resolution
Signed the user in using a verified backup method, then re-registered Microsoft Authenticator on the new phone. Confirmed a fresh push approval worked.

## User-Facing Final Response
> Hi Ryan, the approval prompts were still going to your old phone. I got you signed in with a backup code and helped set up Authenticator on your new phone. Test approvals are coming through now. Reminder: when you swap phones, re-add Authenticator before wiping the old one. — IT Help Desk

## Prevention / Follow-Up Notes
- Recommend users set up **two** MFA methods (app + phone) — updated onboarding guidance.
- Documented in KB-008 (MFA Reset).
