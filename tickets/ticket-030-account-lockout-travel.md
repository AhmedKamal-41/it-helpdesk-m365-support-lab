# TKT-030 — Account Lockout After Travel

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-030 |
| **Title** | Locked out after signing in from a new location |
| **User** | Marcus Reed (mreed) |
| **Department** | Management |
| **Category** | Account Lockout |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I'm traveling for work and now my account is locked and asking for extra verification I can't complete."

## Business Impact
A director is blocked from email and files while traveling. Time-sensitive.

## Troubleshooting Steps
1. Verified identity carefully (extra caution for a from-travel request).
2. Reviewed Entra ID sign-in logs: a Conditional Access risk policy flagged the new/foreign location and locked further attempts.
3. Confirmed with the user (by known phone number) that the travel and sign-ins were legitimate.
4. Confirmed no evidence of compromise — same device, expected trip.
5. Unlocked the account and had the user complete MFA from the known Authenticator app; access restored.

## Root Cause
A Conditional Access / risky-sign-in policy locked the account after detecting an unfamiliar travel location — a protective false positive, not a breach.

## Resolution
After verifying the trip was legitimate, unlocked the account and had the user re-authenticate with MFA. Director regained access to email and files.

## User-Facing Final Response
> Hi Marcus, our security system flagged your sign-in from a new location and locked the account as a precaution. I've confirmed it was you and restored access. For future trips, let IT know your travel dates in advance and we can smooth this out. Safe travels! — IT Help Desk

## Prevention / Follow-Up Notes
- Suggested a "notify IT before travel" step for execs to reduce false lockouts.
- No password reset needed — verified legitimate activity before unlocking.
