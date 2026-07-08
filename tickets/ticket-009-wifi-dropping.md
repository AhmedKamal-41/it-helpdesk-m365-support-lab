# TKT-009 — Office Wi-Fi Keeps Dropping

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-009 |
| **Title** | Wi-Fi disconnects repeatedly at desk |
| **User** | Liam Murphy (lmurphy) |
| **Department** | Operations |
| **Category** | Wi-Fi / Network |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"My laptop keeps dropping off the Wi-Fi every few minutes and I have to reconnect."

## Business Impact
Intermittent connectivity interrupts the user's work and meetings. Not fully blocked but disruptive.

## Troubleshooting Steps
1. Confirmed other users near the same area were stable — issue isolated to this laptop.
2. Checked the laptop was connecting to the **Guest** SSID instead of the corporate SSID.
3. Forgot the Guest network and connected to the corporate SSID with proper credentials.
4. Updated the Wi-Fi adapter driver via Windows Update (was slightly outdated).
5. Disabled the adapter's "allow the computer to turn off this device to save power" power-saving setting.

## Root Cause
Laptop was auto-joining the weaker Guest network and the adapter's power-saving setting was cutting the connection during idle periods.

## Resolution
Connected the laptop to the corporate SSID, updated the driver, and disabled power saving on the Wi-Fi adapter. Connection remained stable over a 30-minute test.

## User-Facing Final Response
> Hi Liam, your laptop was hopping onto the Guest Wi-Fi and a power-saving setting was dropping it when idle. I've moved you to the corporate network and turned off that setting. It's been rock-solid in testing — let me know if it drops again. — IT Help Desk

## Prevention / Follow-Up Notes
- Removed the Guest network profile to prevent auto-reconnect.
- Documented in KB-007 (Wi-Fi Troubleshooting).
