# TKT-013 — Cannot Open Shared Department Drive

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-013 |
| **Title** | "You don't have permission" on Operations drive |
| **User** | Emma Wilson (ewilson) |
| **Department** | Operations |
| **Category** | Shared Folder |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"When I click the Operations shared drive I get 'You don't have permission to access this folder,' but it worked yesterday."

## Business Impact
User cannot reach shared operational files. Blocked for tasks needing those documents.

## Troubleshooting Steps
1. Confirmed other Operations users could open the drive — issue isolated to this user.
2. Checked the mapped drive — it pointed to the correct path.
3. Verified group membership in Entra ID: user was still in "Operations Team," so permissions were intact.
4. Suspected a stale cached credential; disconnected and re-mapped the network drive.
5. Had the user sign out/in; access was restored on reconnect.

## Root Cause
A stale/cached network credential was blocking access after a recent password change. Re-authenticating cleared it.

## Resolution
Re-mapped the drive and refreshed the user's session credentials. User confirmed they can open and edit files on the Operations shared drive again.

## User-Facing Final Response
> Hi Emma, your PC was holding an old saved login for the shared drive after your recent password change. I refreshed it and you're back in. If a shared folder ever says "no permission" right after a password change, a sign-out and sign-in usually fixes it. — IT Help Desk

## Prevention / Follow-Up Notes
- Confirmed group membership before making changes — no permission edits needed.
- Documented cached-credential fix for the team.
