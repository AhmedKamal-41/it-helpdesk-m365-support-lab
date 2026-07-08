# KB-002 — Outlook Sync Troubleshooting

**Category:** Microsoft 365 / Email | **Audience:** Level 1 Help Desk | **Related:** [KB-005 OneDrive Sync](kb-005-onedrive-sync.md)

## Problem
Outlook desktop is not sending or receiving new email, or mail appears on the web/phone but not on the desktop client.

## Common Symptoms
- "Disconnected" or "Working Offline" shown in the Outlook status bar.
- New mail arrives on Outlook Web (OWA) and mobile but not the desktop.
- Emails stuck in the Outbox.
- Slow or hanging send/receive.

## Step-by-Step Fix
1. Check the **status bar** at the bottom of Outlook: "Connected," "Disconnected," or "Working Offline."
2. If it says **Working Offline**, go to the **Send/Receive** tab and click **Work Offline** to turn it off.
3. Confirm the device has internet and other M365 apps work.
4. Click **Send/Receive All Folders** (or press F9) to force a sync.
5. If mail is stuck in the **Outbox**, open the message and resend; check it isn't over the attachment size limit.
6. Compare with **OWA** (`https://outlook.office.com`) — if OWA is fine, the issue is the local client.
7. If still failing, restart Outlook, then restart the PC.
8. As a last resort, repair the Outlook profile (**Control Panel → Mail → Show Profiles**) or rebuild the OST.

## Commands / Tools Used
- Outlook Web Access (OWA): `https://outlook.office.com`
- Outlook: Send/Receive tab, F9 to sync
- Control Panel → Mail → Profiles (profile repair)

## When to Escalate
- OWA also fails to receive mail → possible mailbox/service issue for Level 2.
- Mailbox is full or license/mailbox provisioning problems.
- Suspected corruption that a profile rebuild doesn't fix.

## Notes for the User
- A "Disconnected" message usually means a network or Work Offline setting, not lost mail.
- Your email is safe on the server even if the desktop app hiccups.

## Notes for IT Technician
- Verify OWA first to split client-side vs. server-side issues.
- Rebuilding the OST is safe for cached Exchange accounts (mail re-downloads).
