# TKT-006 — Teams No Audio in Meetings

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-006 |
| **Title** | No sound in Microsoft Teams meetings |
| **User** | Emma Wilson (ewilson) |
| **Department** | Operations |
| **Category** | Teams |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I joined a Teams meeting and couldn't hear anyone, and they said they couldn't hear me either."

## Business Impact
User could not participate in meetings by voice. Able to use chat, so partially functional.

## Troubleshooting Steps
1. Confirmed the issue happened in every meeting, not just one — pointing to a device setting.
2. Opened Teams **Settings > Devices**: the speaker and microphone were set to a disconnected headset.
3. Changed the speaker and mic to the correct active device (laptop speakers / USB headset).
4. Ran the built-in **Make a test call** in Teams — audio worked both ways.
5. Confirmed Windows sound output was also set correctly and not muted.

## Root Cause
Teams audio devices were pointed at an old/disconnected headset instead of the active output/input device.

## Resolution
Selected the correct microphone and speaker in Teams device settings and validated with a test call. Full two-way audio restored.

## User-Facing Final Response
> Hi Emma, your Teams audio was set to a headset that wasn't plugged in. I switched it to your active device and the test call sounds perfect. Tip: in Teams, click the "..." before joining a call and pick your device under Settings > Devices. — IT Help Desk

## Prevention / Follow-Up Notes
- Showed user the pre-join device check.
- Documented in KB-006 (Teams Audio & Camera).
