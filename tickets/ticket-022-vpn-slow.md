# TKT-022 — VPN Slow and Disconnecting

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-022 |
| **Title** | VPN very slow and drops intermittently |
| **User** | Ryan Evans (revans) |
| **Department** | Sales |
| **Category** | VPN |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"The VPN connects but it's really slow and drops every 10-15 minutes when I'm working from home."

## Business Impact
Remote user's productivity is degraded by slow, unstable access to internal resources.

## Troubleshooting Steps
1. Confirmed the user's home internet speed was fine on a speed test (issue not the ISP).
2. Checked the VPN client version — an update was available; updated it.
3. Found the user was on the home 2.4 GHz Wi-Fi far from the router; advised moving closer or using 5 GHz.
4. Switched the VPN protocol/gateway to the recommended setting per the VPN guide.
5. Ran `Check-NetworkStatus.ps1` to confirm stable connectivity after changes.

## Root Cause
Combination of an outdated VPN client and a weak home Wi-Fi signal caused slow, unstable tunnels.

## Resolution
Updated the VPN client, adjusted the gateway setting, and improved the user's Wi-Fi placement. Connection held stable and fast over an extended test.

## User-Facing Final Response
> Hi Ryan, I updated your VPN app and tuned its connection setting, and moving closer to your router made a big difference. It's stayed connected and fast in testing. If it drops again, try the 5 GHz band on your home Wi-Fi. — IT Help Desk

## Prevention / Follow-Up Notes
- Reminded user to keep the VPN client updated.
- Documented in KB-004 (VPN Troubleshooting).
