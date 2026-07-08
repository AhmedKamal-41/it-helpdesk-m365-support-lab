# TKT-020 — Teams Camera Not Detected

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-020 |
| **Title** | Webcam not working in Teams |
| **User** | Isabella Rossi (irossi) |
| **Department** | Sales |
| **Category** | Teams |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"My camera won't turn on in Teams calls — it just shows a black screen with my initials."

## Business Impact
User cannot appear on video in customer calls. Audio works, so partially functional.

## Troubleshooting Steps
1. Confirmed the camera worked in the Windows **Camera** app — hardware was fine.
2. Checked Windows **Privacy & Security > Camera**: "Let apps access your camera" was on, but Teams desktop access was off.
3. Enabled camera access for Microsoft Teams.
4. Verified Teams **Settings > Devices** had the correct camera selected.
5. Restarted Teams and ran a test call — video worked.

## Root Cause
Windows camera privacy setting was blocking the Teams desktop app from using the webcam.

## Resolution
Granted Teams camera permission in Windows privacy settings and confirmed the correct device in Teams. Video now works in calls.

## User-Facing Final Response
> Hi Isabella, Windows was blocking Teams from using your camera. I turned that permission on and your video works in test calls now. If another app ever can't see your camera, check Settings > Privacy & Security > Camera. — IT Help Desk

## Prevention / Follow-Up Notes
- Common after Windows updates reset privacy toggles.
- Documented in KB-006 (Teams Audio & Camera).
