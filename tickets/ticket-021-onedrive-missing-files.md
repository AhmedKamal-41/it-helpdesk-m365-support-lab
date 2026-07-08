# TKT-021 — OneDrive Files Missing After Sync

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-021 |
| **Title** | Files appear missing from OneDrive folder |
| **User** | Noah Thompson (nthompson) |
| **Department** | Operations |
| **Category** | OneDrive |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"Some of my files disappeared from my OneDrive folder — they were there yesterday and now they're gone."

## Business Impact
User believes work files were lost. High concern but recoverable; work continues on other files.

## Troubleshooting Steps
1. Reassured the user and avoided any deletion actions.
2. Checked OneDrive online — files were present in the cloud (not actually deleted).
3. Noticed the files showed only cloud icons; **Files On-Demand** had freed local copies to save space.
4. Confirmed nothing was in the OneDrive Recycle Bin (so no deletion occurred).
5. Right-clicked the folder and chose **Always keep on this device** to restore local copies.

## Root Cause
OneDrive Files On-Demand had made the files "online-only" to save disk space, so they appeared missing locally though they were safe in the cloud.

## Resolution
Explained Files On-Demand, verified all files existed online, and set the needed folder to always stay on the device. Files reappeared locally and open normally.

## User-Facing Final Response
> Hi Noah, good news — nothing was lost. OneDrive had moved those files to "online-only" to save space, so they showed with a cloud icon. I've set that folder to stay on your device and everything's back. A cloud icon means the file is safe online and downloads when you open it. — IT Help Desk

## Prevention / Follow-Up Notes
- Explained the difference between cloud-only and locally-available files.
- Documented in KB-005 (OneDrive Sync Troubleshooting).
