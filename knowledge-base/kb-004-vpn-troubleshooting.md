# KB-004 — VPN Troubleshooting

**Category:** Network / Remote Access | **Audience:** Level 1 Help Desk | **Related:** [KB-007 Wi-Fi](kb-007-wifi-troubleshooting.md)

## Problem
A remote user cannot connect to the company VPN, or the VPN is slow and disconnects, blocking access to internal drives and resources.

## Common Symptoms
- "Authentication failed" when connecting.
- VPN connects then drops repeatedly.
- Connected but cannot reach shared drives or internal sites.
- Very slow performance over the VPN.

## Step-by-Step Fix
1. Confirm the user has **general internet** (can they browse a public website?). No internet = fix that first (see KB-007).
2. Verify the **VPN client is up to date**; update if not.
3. Have the user **re-enter credentials** carefully (VPN uses the M365 account + MFA).
4. If **authentication fails**, confirm the user is in the **VPN Users** security group (Entra ID). If not, this needs Level 2.
5. For **drops/slowness**: check home Wi-Fi strength (move closer to router, prefer 5 GHz), close bandwidth-heavy apps.
6. Disconnect and reconnect the VPN; if needed, restart the PC.
7. Confirm access to a known internal resource after connecting.

## Commands / Tools Used
- `Check-NetworkStatus.ps1` (verifies connectivity, gateway, DNS)
- VPN client (update + reconnect)
- Entra ID → Groups → VPN Users (membership check — Level 2 to modify)

## When to Escalate
- User not in the VPN Users group / Conditional Access changes → **Level 2**.
- VPN service or gateway is down for multiple users → **Level 2**.
- Certificate or tenant-level VPN configuration issues.

## Notes for the User
- VPN needs a stable internet connection first — weak Wi-Fi causes most drops.
- Keep the VPN app updated when prompted.

## Notes for IT Technician
- Split "no internet" vs. "VPN-only" problems early.
- Group membership + Conditional Access are the most common auth-failure root causes.
