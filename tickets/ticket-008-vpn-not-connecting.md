# TKT-008 — VPN Will Not Connect

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-008 |
| **Title** | Cannot connect to company VPN from home |
| **User** | Oliver Scott (oscott) |
| **Department** | Sales |
| **Category** | VPN |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | Yes |

## User Description
"I'm working from home and the VPN keeps failing with an authentication error. I can't reach any of the shared drives."

## Business Impact
Remote user cannot reach internal resources or shared drives. Fully blocked for remote work.

## Troubleshooting Steps
1. Confirmed the user had general internet access at home (could browse the web).
2. Verified VPN client version was current.
3. Had user re-enter credentials — still an authentication error.
4. Checked VPN Users group membership in Entra ID — user was **not** in the "VPN Users" group.
5. **Escalated to Level 2** to confirm Conditional Access / group requirement, since group changes are outside Level 1 scope.
6. IT Manager added the user to the VPN Users group; user reconnected successfully.

## Root Cause
User had recently moved to a remote schedule but was never added to the "VPN Users" security group required by the Conditional Access policy.

## Resolution
After escalation, the IT Manager added the user to the VPN Users group. User authenticated and connected to the VPN, regaining access to shared drives.

## User-Facing Final Response
> Hi Oliver, your account wasn't yet in the group that grants VPN access. Our IT Manager added you and I confirmed you can now connect and reach the shared drives. Please restart the VPN client one more time to be safe. — IT Help Desk

## Prevention / Follow-Up Notes
- **Escalation reason:** Security group / Conditional Access membership is a Level 2 task.
- Follow-up: add "VPN Users group" to the standard remote-work onboarding checklist.
