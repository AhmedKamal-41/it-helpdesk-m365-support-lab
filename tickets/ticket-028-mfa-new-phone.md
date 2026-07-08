# TKT-028 — Reset MFA on New Phone

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-028 |
| **Title** | Set up MFA on a replacement phone |
| **User** | Lucas Green (lgreen) |
| **Department** | Sales |
| **Category** | MFA |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I got a new work phone and need to move my Microsoft Authenticator over. My old phone is wiped already."

## Business Impact
User will be unable to complete MFA once the old device is gone. Time-sensitive to avoid a lockout.

## Troubleshooting Steps
1. Verified identity per the MFA Reset Workflow.
2. Confirmed the old device was wiped, so the previous Authenticator registration was unusable.
3. Signed the user in using a verified backup phone (SMS) method.
4. Removed the stale Authenticator method from the user's security info.
5. Guided the user to install Authenticator on the new phone and register the account; set it as the default method.

## Root Cause
User replaced their phone and wiped the old one before migrating Authenticator, leaving a stale MFA registration.

## Resolution
Used a verified backup method to sign in, removed the old Authenticator entry, and registered the new phone. Confirmed a successful push approval from the new device.

## User-Facing Final Response
> Hi Lucas, your new phone is now set up for Microsoft Authenticator and I confirmed the approval prompt works. I also cleared the old registration. Tip for next time: add the new phone before wiping the old one so there's no gap. — IT Help Desk

## Prevention / Follow-Up Notes
- Confirmed a second backup method remains on file.
- Documented in KB-008 (MFA Reset).
