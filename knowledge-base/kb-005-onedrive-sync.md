# KB-005 — OneDrive Sync Troubleshooting

**Category:** Microsoft 365 / Files | **Audience:** Level 1 Help Desk | **Related:** [KB-002 Outlook Sync](kb-002-outlook-sync.md)

## Problem
OneDrive is stuck syncing, files appear missing locally, or changes aren't showing up in the cloud or on other devices.

## Common Symptoms
- OneDrive icon spins on "Syncing" for a long time.
- Files show a **cloud icon** and appear "missing" locally.
- "Sync pending" or a sync error/exclamation on the OneDrive icon.
- Edits not appearing on OneDrive Web or another PC.

## Step-by-Step Fix
1. Click the **OneDrive cloud icon** in the system tray and read the status/errors.
2. **Files with a cloud icon are not lost** — they're online-only (Files On-Demand). Right-click → **Always keep on this device** to download them.
3. For a stuck sync: **Pause** then **Resume** syncing. If still stuck, **close and reopen** OneDrive.
4. Check for **filename issues**: invalid characters (`" * : < > ? / \ |`) or paths that are too long — rename to fix.
5. Confirm there's **free disk space** (`Check-DiskSpace.ps1`).
6. Verify the file exists on **OneDrive Web** (`https://onedrive.com`) to confirm it's safe in the cloud.
7. If errors persist, sign out of OneDrive and back in, or run a repair/reset as a last resort.

## Commands / Tools Used
- OneDrive activity center (system tray)
- OneDrive Web: `https://onedrive.com`
- `Check-DiskSpace.ps1` (confirm free space)

## When to Escalate
- Persistent sync errors after reset → Level 2.
- Suspected data loss not recoverable via Recycle Bin / version history.
- Tenant-level OneDrive policy or storage-quota issues.

## Notes for the User
- A cloud icon means the file is safely stored online and downloads when opened.
- Check the OneDrive Recycle Bin before assuming a file is gone.

## Notes for IT Technician
- Most "missing files" cases are Files On-Demand, not deletion — verify online first.
- Reassure the user before troubleshooting; avoid deleting anything.
