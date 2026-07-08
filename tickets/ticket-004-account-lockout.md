# TKT-004 — Account Locked Out

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-004 |
| **Title** | Account locked after multiple failed sign-ins |
| **User** | Nina Patel (npatel) |
| **Department** | Finance |
| **Category** | Account Lockout |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"It says my account is locked. I tried a few times to log in and now it won't let me at all."

## Business Impact
User is fully locked out of all Microsoft 365 services. Cannot work until the account is unlocked.

## Troubleshooting Steps
1. Verified user identity per security policy.
2. Checked Entra ID: account status showed **locked** after exceeding failed sign-in threshold.
3. Reviewed sign-in logs — repeated failures from the user's own device only (no external/foreign attempts).
4. Confirmed the password was simply mistyped, not compromised.
5. Unlocked the account and confirmed the current password was still valid.

## Root Cause
User mistyped their password several times (old muscle memory after a recent change), tripping the lockout policy. No sign of malicious activity.

## Resolution
Unlocked the account in Entra ID. Because logs showed no compromise, a password reset was not required. User signed in successfully.

## User-Facing Final Response
> Hi Nina, your account tripped our security lockout after a few incorrect attempts — that's a safety feature. I've unlocked it and your current password still works. Take your time typing it in; the lockout resets automatically after 15 minutes if it ever happens again. — IT Help Desk

## Prevention / Follow-Up Notes
- Confirmed no unusual sign-in locations before unlocking.
- Reminded user of SSPR if they're ever unsure of the password.
