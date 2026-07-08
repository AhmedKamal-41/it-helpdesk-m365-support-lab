# TKT-018 — Forgot Password / Locked Account

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-018 |
| **Title** | Forgot password and locked out |
| **User** | Hannah Osei (hosei) |
| **Department** | HR |
| **Category** | Password Reset |
| **Priority** | P2 – High |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I forgot my password and after trying a few times my account locked. I need to get into email for interviews today."

## Business Impact
Recruiter cannot access email or calendar on an interview day. Time-sensitive block.

## Troubleshooting Steps
1. Verified identity per the Password Reset Workflow.
2. Confirmed the account was both locked and needed a password reset.
3. Reviewed sign-in logs — failures from the user's known device only, no compromise.
4. Unlocked the account and issued a temporary password with "change at next sign-in."
5. Confirmed successful sign-in and that Outlook loaded the day's calendar.

## Root Cause
User forgot their password and tripped the lockout with repeated attempts. No security concern.

## Resolution
Unlocked the account and reset the password. User signed in, set a new password, and confirmed access to email and calendar in time for interviews.

## User-Facing Final Response
> Hi Hannah, you're all set — account unlocked and a temporary password sent securely. Sign in and you'll be prompted to choose a new one. I confirmed your calendar loaded, so you're ready for today's interviews. Consider registering for self-service reset so you can do this yourself next time. — IT Help Desk

## Prevention / Follow-Up Notes
- Encouraged self-service password reset (SSPR) enrollment.
- No follow-up required.
