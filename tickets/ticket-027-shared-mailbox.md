# TKT-027 — Shared Mailbox Not Showing

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-027 |
| **Title** | Shared mailbox not appearing in Outlook |
| **User** | Grace Liu (gliu) |
| **Department** | HR |
| **Category** | Shared Folder |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I'm supposed to help monitor the HR shared mailbox but it isn't showing up in my Outlook."

## Business Impact
User cannot help manage incoming HR mail. Team coverage reduced but individual mail unaffected.

## Troubleshooting Steps
1. Confirmed with HR Manager that the user should have shared mailbox access.
2. Verified/added the user to the "Shared Mailbox Users" group granting HR mailbox permission.
3. Noted Outlook can take time to auto-map after permission changes.
4. Manually added the shared mailbox as an additional account in Outlook to speed access.
5. Restarted Outlook; the HR shared mailbox appeared in the folder list.

## Root Cause
The user had just been granted shared mailbox permission, and Outlook had not yet auto-mapped the mailbox.

## Resolution
Confirmed the permission, manually added the shared mailbox in Outlook, and restarted the client. The HR shared mailbox now appears and the user can read and send from it.

## User-Facing Final Response
> Hi Grace, your access to the HR shared mailbox is active and it now shows in your Outlook folder list. When sending from it, use the "From" field and pick the HR shared address so replies go to the team. Let me know if you don't see new mail arriving. — IT Help Desk

## Prevention / Follow-Up Notes
- Auto-mapping can lag; manual add is a reliable shortcut.
- Reminded user to send **as** the shared mailbox for team continuity.
