# TKT-001 — Password Reset Request

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-001 |
| **Title** | Unable to sign in — forgot password |
| **User** | Robert King (rking) |
| **Department** | Finance |
| **Category** | Password Reset |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I can't log in to my laptop this morning. I think I forgot my password after the long weekend. I keep getting 'the password is incorrect.'"

## Business Impact
User cannot access their workstation, Outlook, or accounting software. Fully blocked from work until resolved.

## Troubleshooting Steps
1. Verified user identity using company identity-verification questions (per Password Reset Workflow).
2. Confirmed the account was not locked out — only the password was unknown.
3. Checked Entra ID sign-in logs — no suspicious activity, failed attempts came from user's known device/IP.
4. Confirmed Caps Lock / keyboard language was not the cause on the user's device.
5. Issued a temporary password via the admin console and enabled "user must change password at next sign-in."

## Root Cause
User forgot their password after time off. No account compromise or system fault.

## Resolution
Reset the password to a temporary value, required change at next logon, and walked the user through setting a new password meeting policy. Confirmed successful sign-in to Windows and Outlook.

## User-Facing Final Response
> Hi Robert, I've reset your password. Please sign in with the temporary password I shared securely — you'll be prompted to create a new one immediately. Make sure it's at least 12 characters with a mix of letters, numbers, and a symbol. Let me know if you have any trouble getting into Outlook. — IT Help Desk

## Prevention / Follow-Up Notes
- Reminded user about the self-service password reset (SSPR) portal for future resets.
- Suggested saving credentials in the approved company password manager.
- No follow-up required.
