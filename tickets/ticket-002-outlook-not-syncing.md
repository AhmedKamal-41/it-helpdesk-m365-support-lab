# TKT-002 — Outlook Not Syncing New Mail

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-002 |
| **Title** | Outlook not receiving new emails |
| **User** | James Carter (jcarter) |
| **Department** | Finance |
| **Category** | Outlook |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"My Outlook hasn't gotten any new email since yesterday afternoon, but I can see mail fine on my phone."

## Business Impact
User is missing incoming email on their primary workstation. Still able to work via mobile, so degraded but not fully blocked.

## Troubleshooting Steps
1. Confirmed mail arrives on Outlook Web (OWA) and mobile — issue isolated to the desktop client.
2. Checked bottom status bar in Outlook: showed "Disconnected."
3. Verified network connectivity and that other M365 apps were online.
4. Toggled **Work Offline** — it was accidentally enabled.
5. Disabled Work Offline; mail began syncing. Ran **Send/Receive All Folders** to confirm.

## Root Cause
"Work Offline" mode was accidentally turned on in Outlook, stopping the client from connecting to the server.

## Resolution
Turned off Work Offline mode and forced a send/receive. New mail synced immediately. Confirmed with user that yesterday's and today's messages were now present.

## User-Facing Final Response
> Hi James, the issue was that Outlook was set to "Work Offline," which pauses email syncing. I've switched it back on and your mail is flowing again. If you ever see "Disconnected" at the bottom of Outlook, check the Send/Receive tab for a "Work Offline" button that's highlighted. — IT Help Desk

## Prevention / Follow-Up Notes
- Showed user how to spot the "Disconnected" status indicator.
- Documented in KB-002 (Outlook Sync Troubleshooting).
