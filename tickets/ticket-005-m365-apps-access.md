# TKT-005 — Cannot Access Microsoft 365 Apps

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-005 |
| **Title** | Office apps say "unlicensed product" |
| **User** | Ava Turner (aturner) |
| **Department** | Sales |
| **Category** | Microsoft 365 |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"Word and Excel are showing a red 'Product Deactivated' banner and won't let me edit anything."

## Business Impact
User cannot edit documents or spreadsheets in the desktop Office apps. Blocked from core daily work.

## Troubleshooting Steps
1. Confirmed the "Product Deactivated / unlicensed" banner in Word and Excel.
2. Verified in the M365 admin center that the user still had a valid Business Standard license assigned.
3. Had user open **File > Account** — it showed signed out of the Office account.
4. Signed the user back into their M365 work account inside Office.
5. Confirmed the license activated and the banner cleared after a restart of the app.

## Root Cause
The Office desktop apps had signed out of the user's M365 account (credential/token expired), so they could not verify the license.

## Resolution
Re-authenticated Office with the user's M365 credentials. Apps re-activated the license and returned to full functionality.

## User-Facing Final Response
> Hi Ava, your Office apps had signed out of your work account, which paused your license. I signed you back in and everything's active again. If you see that banner in future, go to File > Account and confirm you're signed in with your QueensTech email. — IT Help Desk

## Prevention / Follow-Up Notes
- Verified MFA prompt completed during re-sign-in.
- No license change needed; issue was authentication, not licensing.
