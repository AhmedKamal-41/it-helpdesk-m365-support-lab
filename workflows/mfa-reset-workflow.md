# Workflow — MFA Reset & Re-Enrollment

**Owner:** IT Help Desk (Level 1) | **Trigger:** User can't complete MFA (new phone, lost device, no prompt).

> Goal: restore MFA access securely — identity verification is non-negotiable because MFA guards the account.

---

## Step 1 — Verify Identity (extra caution)
- [ ] Confirm the account owner using approved verification (a second method for MFA requests).
- [ ] Be alert to social-engineering attempts to bypass MFA.
- [ ] Log the verification method in the ticket.

## Step 2 — Get the User In (backup method)
- [ ] Use an existing **verified backup method** (alternate phone/SMS) to sign the user in.
- [ ] If no backup method exists and identity can't be safely confirmed → **escalate to Level 2**.

## Step 3 — Clean Up Stale Methods
- [ ] In Entra ID **Authentication methods**, remove the **old/lost** device registration.
- [ ] Keep at least one working verified method during the transition.

## Step 4 — Re-Enroll
- [ ] User installs **Microsoft Authenticator** on the new device.
- [ ] User adds the account via `https://aka.ms/mfasetup`.
- [ ] Set Authenticator as the **default** method.
- [ ] Test a **push approval** to confirm it works.

## Step 5 — Harden
- [ ] Ensure the user has **two** methods on file (app + phone).
- [ ] Remind them to re-add Authenticator **before** wiping an old phone.

## Escalation
- Suspected **account compromise** or **MFA-fatigue attack** (repeated unexpected prompts) → **Level 2 / security**.
- **Conditional Access** policy blocking the user → **Level 2**.
