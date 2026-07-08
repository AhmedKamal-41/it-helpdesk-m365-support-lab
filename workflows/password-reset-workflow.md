# Workflow — Password Reset

**Owner:** IT Help Desk (Level 1) | **Trigger:** User reports they can't sign in.

> Goal: safely restore access while confirming the request is legitimate.

---

## Step 1 — Verify Identity (mandatory)
- [ ] Confirm the caller is the account owner using approved verification questions.
- [ ] **Never** reset a password on an unverified request.
- [ ] Log the verification method in the ticket.

## Step 2 — Diagnose the State
- [ ] Locked only? → **Unlock** (a reset may not be needed).
- [ ] Forgotten / expired? → Proceed to reset.
- [ ] Check **sign-in logs** for suspicious locations or unusual failures.

## Step 3 — Reset
- [ ] Issue a **temporary password**.
- [ ] Enable **"must change password at next sign-in."**
- [ ] Deliver the temporary password through a **secure channel** (never plain email/chat).

## Step 4 — Confirm
- [ ] User signs in and sets a compliant new password (12+ chars, mixed, not reused).
- [ ] Verify access to Windows, Outlook, and one other app.
- [ ] Update saved passwords on the user's phone/other devices.

## Step 5 — Prevent
- [ ] Encourage **self-service password reset (SSPR)** enrollment.
- [ ] Recommend the approved **password manager**.

## Escalation
- Sign-in logs show **compromise indicators** (foreign IPs, many attempts) → **Level 2 / security**.
- Reset doesn't resolve (hybrid/sync identity) → **Level 2**.
