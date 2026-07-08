# TKT-015 — Suspicious Phishing Email Received

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-015 |
| **Title** | Suspected phishing email requesting gift cards |
| **User** | Aisha Khan (akhan) |
| **Department** | Finance |
| **Category** | Security / Phishing |
| **Priority** | P1 – Critical |
| **Status** | Resolved |
| **Escalation Needed?** | Yes |

## User Description
"I got an email that looks like it's from the CEO asking me to urgently buy gift cards and reply with the codes. It feels off — I didn't click anything."

## Business Impact
Potential financial fraud / CEO-impersonation (Business Email Compromise) targeting the Finance team. Treated as critical.

## Troubleshooting Steps
1. Instructed user **not** to reply, click links, or buy anything, and to leave the email in place.
2. Inspected the sender address — a look-alike external domain, not the real CEO account (display-name spoof).
3. Checked email headers for failed SPF/DKIM/DMARC (confirmed sender spoofing).
4. Confirmed the user did not interact with the message.
5. **Escalated to Level 2 (IT Manager)** immediately, per Security/Phishing policy, for tenant-level action.
6. IT Manager reported and quarantined the message tenant-wide and blocked the sender domain.

## Root Cause
External phishing / CEO-impersonation (BEC) attempt targeting Finance staff with a gift-card scam. Not a system compromise.

## Resolution
User did not engage. IT Manager quarantined the message across the tenant, blocked the sender, and sent an awareness note to Finance. No credentials or funds were compromised.

## User-Facing Final Response
> Hi Aisha, excellent catch — that was a phishing scam impersonating the CEO, and you did exactly the right thing by not replying. We've blocked the sender and removed the message company-wide. If any email pressures you to buy gift cards or move money urgently, always verify in person or by phone first. — IT Help Desk

## Prevention / Follow-Up Notes
- **Escalation reason:** Security incidents and tenant-wide quarantine are Level 2 tasks.
- Follow-up: short phishing-awareness refresher scheduled for all staff.
- Reinforced "verify money/gift-card requests out-of-band" rule.
