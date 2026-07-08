# KB-003 — Printer Troubleshooting

**Category:** Hardware / Peripherals | **Audience:** Level 1 Help Desk

## Problem
A user cannot print, print jobs get stuck in the queue, or the printer shows offline/error.

## Common Symptoms
- Jobs sit in the queue with "Error" or "Spooling" and never print.
- Printer shows "Offline" in Windows.
- "Printer not found" when trying to add or print.
- Nothing happens when clicking Print.

## Step-by-Step Fix
1. Confirm whether **other users can print** — if not, it's a printer/network issue (check power, paper, toner, network cable/Wi-Fi on the device).
2. Check the printer's own display for errors (jam, low toner, offline).
3. On the user's PC, open **Settings → Bluetooth & devices → Printers & scanners** and confirm the correct printer is set as **default**.
4. If "Offline," right-click the printer and **uncheck "Use Printer Offline."**
5. Open the **print queue**; cancel/clear stuck jobs.
6. **Restart the Print Spooler** service (see `powershell-scripts/Restart-PrintSpooler.ps1`).
7. Send a **test page** (Printer properties → Print Test Page).
8. If the printer is missing, re-add it by name/IP from the printer list.

## Commands / Tools Used
- `Restart-PrintSpooler.ps1` (safely restarts the spooler and reports status)
- Settings → Printers & scanners
- `services.msc` → Print Spooler (manual restart)

## When to Escalate
- Printer hardware fault (jam that won't clear, hardware error code) → facilities/vendor.
- Network printer unreachable for everyone → Level 2 / network check.
- Driver deployment across many machines.

## Notes for the User
- If your document is stuck, don't click Print repeatedly — it stacks more stuck jobs.
- Make sure you're printing to the correct office printer (check the name).

## Notes for IT Technician
- Clearing the queue + spooler restart resolves the majority of single-PC print issues.
- Confirm the correct default printer; users often print to a disconnected device.
