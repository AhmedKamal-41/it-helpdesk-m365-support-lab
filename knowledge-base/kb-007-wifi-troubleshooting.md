# KB-007 — Wi-Fi & Network Troubleshooting

**Category:** Network | **Audience:** Level 1 Help Desk | **Related:** [KB-004 VPN](kb-004-vpn-troubleshooting.md)

## Problem
A user has no internet, a slow connection, or Wi-Fi that keeps dropping.

## Common Symptoms
- "No internet" / globe icon on the network tray icon.
- Wi-Fi connects then drops repeatedly.
- Slow browsing or timeouts.
- Connected to the wrong network (Guest instead of corporate).

## Step-by-Step Fix
1. Confirm whether **others nearby are affected** — if yes, it may be an outage (escalate).
2. Check the **network icon**: connected? To which SSID? Move off **Guest** onto the **corporate** SSID.
3. For **wired** PCs, reseat the **Ethernet cable** at both ends and confirm the link light.
4. Toggle Wi-Fi off/on, or disconnect/reconnect to the network.
5. Run `Check-NetworkStatus.ps1` to test gateway, DNS, and internet reachability.
6. Renew the IP: `ipconfig /release` then `ipconfig /renew`; flush DNS with `ipconfig /flushdns`.
7. For drops: update the Wi-Fi driver and disable the adapter's power-saving ("allow the computer to turn off this device").
8. Restart the PC to apply network stack changes.

## Commands / Tools Used
- `Check-NetworkStatus.ps1`
- `ipconfig /release`, `ipconfig /renew`, `ipconfig /flushdns`
- `ping 8.8.8.8` (internet reachability), `ping <gateway>` (local)
- Device Manager → network adapter → Power Management

## When to Escalate
- Multiple users offline / suspected outage → Level 2 / ISP.
- Router/switch/access-point hardware issues.
- DNS or DHCP server problems affecting many devices.

## Notes for the User
- Connect to the **corporate** Wi-Fi, not Guest, for stable access.
- A loose network cable is a common cause of a sudden "No internet."

## Notes for IT Technician
- `Check-NetworkStatus.ps1` quickly isolates local vs. internet vs. DNS.
- Power-saving on Wi-Fi adapters is a frequent cause of intermittent drops.
