# KB-006 — Teams Audio & Camera Issues

**Category:** Microsoft 365 / Collaboration | **Audience:** Level 1 Help Desk

## Problem
A user has no audio, no microphone, or no camera in Microsoft Teams meetings.

## Common Symptoms
- Can't hear others / others can't hear the user.
- Microphone icon shows muted or picks up nothing.
- Camera shows a black screen or the user's initials.
- "We can't find your camera/mic."

## Step-by-Step Fix
1. In Teams, go to **Settings (⋯) → Devices**. Confirm the correct **Speaker**, **Microphone**, and **Camera** are selected (not a disconnected headset).
2. Run **Make a test call** in Teams to validate audio both ways.
3. Check the **physical device**: headset plugged in, camera not covered, volume up, mute switch off.
4. Confirm **Windows privacy permissions**: Settings → Privacy & Security → **Microphone** and **Camera** → ensure Teams is allowed.
5. Test the camera in the Windows **Camera** app to confirm hardware works (isolates Teams vs. device).
6. Restart Teams; if needed, restart the PC.
7. Ensure Teams is updated (⋯ → Check for updates).

## Commands / Tools Used
- Teams → Settings → Devices → Make a test call
- Windows Settings → Privacy & Security → Microphone / Camera
- Windows Camera app (hardware test)

## When to Escalate
- Camera/mic fails in the Windows Camera app too → possible hardware fault (Level 2 / replacement).
- Company-wide Teams audio issues → Level 2 / service check.

## Notes for the User
- Before joining, use the pre-join screen to pick your device and unmute.
- Windows updates sometimes reset camera/mic permissions — re-enable them for Teams.

## Notes for IT Technician
- Privacy permissions and wrong-device selection cause most Teams A/V tickets.
- Test in the Windows Camera app to separate hardware from app issues.
