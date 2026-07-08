# TKT-029 — Password Expired, Cannot Login

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-029 |
| **Title** | Password expired and login blocked |
| **User** | Emma Wilson (ewilson) |
| **Department** | Operations |
| **Category** | Password Reset |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"When I try to sign in it says my password has expired, but it won't let me set a new one."

## Business Impact
User is blocked from sign-in until the password is updated. Fully blocked.

## Troubleshooting Steps
1. Confirmed in Entra ID that the password had reached the expiration policy limit.
2. Verified identity per policy.
3. Guided the user to the change-password flow; the initial attempt failed because the new password reused part of an old one.
4. Explained password history/complexity requirements.
5. User set a compliant new password and signed in successfully.

## Root Cause
The password reached the expiration policy age, and the first replacement attempt failed the password-history/complexity rules.

## Resolution
Walked the user through choosing a compliant new password that met complexity and history rules. Sign-in succeeded to Windows and M365.

## User-Facing Final Response
> Hi Emma, your password had expired on schedule. I helped you set a new one that meets our rules (12+ characters, not too similar to old ones) and you're signed back in. You'll get a reminder before it expires next time. — IT Help Desk

## Prevention / Follow-Up Notes
- Reminded user that expiry reminders appear ~14 days ahead.
- Encouraged using the password manager to generate compliant passwords.
