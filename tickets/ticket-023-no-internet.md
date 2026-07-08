# TKT-023 — No Internet on Desktop

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-023 |
| **Title** | Desktop has no internet connection |
| **User** | Robert King (rking) |
| **Department** | Finance |
| **Category** | Wi-Fi / Network |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"My desktop says 'No internet' and I can't open email or any websites."

## Business Impact
User is fully offline and blocked from email, apps, and shared resources.

## Troubleshooting Steps
1. Confirmed the desktop is wired (Ethernet) — checked the cable at both ends; one end was loose at the wall port.
2. Reseated the Ethernet cable; the network icon still showed no connection.
3. Confirmed nearby wired users were online — not a switch/outage.
4. Ran `Check-NetworkStatus.ps1`: no gateway reachable, then ran `ipconfig /release` and `/renew`.
5. Machine pulled a valid IP after cable reseat + DHCP renew; connectivity restored.

## Root Cause
A partially unplugged Ethernet cable dropped the link; the PC lost its DHCP lease and needed to renew after the cable was reseated.

## Resolution
Reseated the Ethernet cable and renewed the IP address. The desktop reconnected, and email and websites loaded normally.

## User-Facing Final Response
> Hi Robert, your network cable had worked loose at the wall, which knocked you offline. I reseated it and refreshed your connection — you're back online and I confirmed email loads. If it drops again, check that the cable clicks firmly into the wall port. — IT Help Desk

## Prevention / Follow-Up Notes
- Suggested cable management to prevent accidental tugs.
- Documented `ipconfig` renew steps in KB-007 (Wi-Fi / Network).
