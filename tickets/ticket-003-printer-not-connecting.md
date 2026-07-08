# TKT-003 — Printer Not Connecting

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-003 |
| **Title** | Cannot print to office printer |
| **User** | Chloe Martin (cmartin) |
| **Department** | Operations |
| **Category** | Printer |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"When I try to print, nothing comes out and my documents just sit in the queue saying 'Error.'"

## Business Impact
User cannot print operational paperwork. Others in the office print fine, so this is isolated to one workstation.

## Troubleshooting Steps
1. Confirmed the printer was online and other users could print — ruled out a hardware/network-wide fault.
2. Opened the print queue: several jobs stuck with "Error" status.
3. Cleared the stuck print queue.
4. Restarted the **Print Spooler** service (used `Restart-PrintSpooler.ps1`).
5. Sent a test page — printed successfully.

## Root Cause
The Print Spooler service had hung, leaving stuck jobs that blocked all new print requests on that PC.

## Resolution
Cleared the queue and restarted the Print Spooler service. Test page and the user's original document printed correctly.

## User-Facing Final Response
> Hi Chloe, your print jobs were stuck in a jammed queue on your PC. I cleared them and restarted the printing service — you should be all set now. If it happens again, let me know and I can clear it in under a minute. — IT Help Desk

## Prevention / Follow-Up Notes
- Provided `Restart-PrintSpooler.ps1` reference to the IT team for quick fixes.
- Documented steps in KB-003 (Printer Troubleshooting).
