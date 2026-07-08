# TKT-019 — Outlook Calendar Not Updating

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-019 |
| **Title** | Calendar invites not showing in Outlook desktop |
| **User** | Priya Nair (pnair) |
| **Department** | Management |
| **Category** | Outlook |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"Meetings people send me show up on my phone but not in my Outlook calendar on my laptop."

## Business Impact
Director risks missing meetings on the desktop calendar. Mobile still works, so partially mitigated.

## Troubleshooting Steps
1. Confirmed invites appeared on OWA and mobile — isolated to the desktop client.
2. Checked calendar view filters — a custom filter was hiding certain items.
3. Reset the calendar view to default.
4. Ran a send/receive and confirmed the Outlook data file wasn't in an error state.
5. Restarted Outlook; recent and upcoming invites appeared correctly.

## Root Cause
A custom calendar view filter was hiding newly received meetings on the desktop client.

## Resolution
Reset the calendar view to the default and refreshed the client. All meetings, including recent invites, now display correctly on the desktop calendar.

## User-Facing Final Response
> Hi Priya, a display filter on your desktop calendar was hiding some meetings. I reset the view to default and everything is showing now — I confirmed your upcoming week matches your phone. Let me know if any specific meeting is still missing. — IT Help Desk

## Prevention / Follow-Up Notes
- Advised against applying custom views to the default calendar.
- Documented view-reset steps for the team.
