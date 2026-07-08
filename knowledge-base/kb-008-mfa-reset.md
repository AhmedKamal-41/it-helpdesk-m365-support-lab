# KB-008 — MFA Reset & Re-Enrollment

**Category:** Accounts & Identity / Security | **Audience:** Level 1 Help Desk | **Related:** [KB-001 Password Reset](kb-001-password-reset.md)

## Problem
A user cannot complete Multi-Factor Authentication — no approval prompt, new phone, or lost device — blocking sign-in.

## Common Symptoms
- No push notification / approval prompt arrives.
- "We didn't hear from you" or MFA timeout.
- User got a **new phone** and can't approve sign-ins.
- Lost or wiped device that held Microsoft Authenticator.

## Step-by-Step Fix
1. **Verify the user's identity** thoroughly — MFA protects the account, so extra caution is required.
2. Use an existing **backup method** (verified phone/SMS or alternate) to get the user signed in.
3. In Entra ID user **Authentication methods**, remove the **stale/old** method (old phone's Authenticator).
4. Have the user install **Microsoft Authenticator** on the new device and **add the account** (via `https://aka.ms/mfasetup`).
5. Set the app as the **default** method and confirm a test push approval works.
6. Encourage registering a **second** method (phone + app) to avoid future lockouts.

## Commands / Tools Used
- Entra ID → Users → Authentication methods (remove/require re-register)
- Security info portal: `https://aka.ms/mfasetup`
- Microsoft Authenticator app

## When to Escalate
- Suspected account compromise or MFA fatigue attack (repeated unexpected prompts) → **Level 2 / security**.
- Conditional Access policy blocking the user → **Level 2**.
- No backup method and identity cannot be safely verified.

## Notes for the User
- Add a **second** MFA method so a lost phone never locks you out.
- Re-add Authenticator on a new phone **before** wiping the old one.

## Notes for IT Technician
- Never remove/reset MFA without strong identity verification (log the method).
- Repeated unexpected prompts can signal an attack — treat as security, not convenience.
