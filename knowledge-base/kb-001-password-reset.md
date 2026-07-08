# KB-001 — Password Reset

**Category:** Accounts & Identity | **Audience:** Level 1 Help Desk | **Related:** [KB-008 MFA Reset](kb-008-mfa-reset.md)

## Problem
A user cannot sign in because they forgot their password, their password expired, or their account is locked after too many failed attempts.

## Common Symptoms
- "The password is incorrect" or "The username or password is incorrect."
- "Your password has expired."
- "Your account has been locked."
- User signs in fine on one device but not another (cached old password).

## Step-by-Step Fix
1. **Verify the user's identity** using the approved verification questions before making any change. Never reset a password on an unverified request.
2. In the Microsoft 365 / Entra ID admin center, locate the user account.
3. Check the account state — is it **locked**, **password expired**, or simply **forgotten**?
   - If only locked (not compromised), **unlock** it; a full reset may not be needed.
   - If forgotten/expired, choose **Reset password**.
4. Set a temporary password and enable **"User must change password at next sign-in."**
5. Share the temporary password through a secure channel (never plain email).
6. Have the user sign in, set a compliant new password (12+ chars, mixed types, not reused).
7. Confirm access to Windows, Outlook, and one other app.

## Commands / Tools Used
- Microsoft 365 / Entra ID admin center → Users → Reset password
- Self-Service Password Reset (SSPR) portal: `https://aka.ms/sspr` (encourage users to self-serve)

## When to Escalate
- Sign-in logs show **foreign/suspicious locations** or many attempts from unknown IPs → possible compromise, escalate to Level 2.
- Reset does not resolve the issue (sync/hybrid identity problems).
- Repeated lockouts with no user error (may indicate a saved credential on another device/service).

## Notes for the User
- Choose a strong, unique passphrase you haven't used before.
- Update the password anywhere it's saved (phone mail app, mapped drives).
- Register for **self-service password reset** so you can reset it yourself next time.

## Notes for IT Technician
- Always verify identity first; log the verification method in the ticket.
- Prefer **unlock** over **reset** when there's no sign of compromise.
- Check sign-in logs before resetting to rule out an attack.
