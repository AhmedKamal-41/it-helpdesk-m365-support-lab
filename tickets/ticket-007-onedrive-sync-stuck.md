# TKT-007 — OneDrive Stuck Syncing

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-007 |
| **Title** | OneDrive stuck on "Syncing changes" |
| **User** | Grace Liu (gliu) |
| **Department** | HR |
| **Category** | OneDrive |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"My OneDrive icon has been spinning all morning and my recent file isn't showing up on the web version."

## Business Impact
Recent HR documents are not backed up to the cloud or available to teammates. Local work continues, but sharing is blocked.

## Troubleshooting Steps
1. Checked the OneDrive cloud icon — showed "Syncing" indefinitely.
2. Opened OneDrive activity center: one large file was stuck.
3. Confirmed there were no filename issues (invalid characters, path too long).
4. Paused and resumed syncing — no change.
5. Closed OneDrive and restarted it; sync completed within a minute.

## Root Cause
The OneDrive sync client had hung on a large file. A client restart cleared the stalled process.

## Resolution
Restarted the OneDrive client. All pending files synced and appeared correctly on OneDrive Web. Verified the recent HR file was present in the cloud.

## User-Facing Final Response
> Hi Grace, OneDrive had gotten stuck on one file. Restarting it cleared the jam and everything is now synced — I confirmed your latest file shows online. If the icon spins for more than a few minutes again, closing and reopening OneDrive usually fixes it. — IT Help Desk

## Prevention / Follow-Up Notes
- Confirmed file path length and characters were fine.
- Documented in KB-005 (OneDrive Sync Troubleshooting).
