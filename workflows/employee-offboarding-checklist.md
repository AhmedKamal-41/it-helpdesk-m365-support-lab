# Workflow — Employee Offboarding Checklist

**Owner:** IT Help Desk (Level 1) + IT Manager | **Trigger:** HR notifies IT of a departure | **Principle:** Revoke access promptly, preserve data.

> Goal: cut off access at the right moment while safely preserving the departing employee's email and files for the business.

---

## 1. Intake
- [ ] Receive the departure notice from HR with the **exact last-day date/time**.
- [ ] Confirm whether the manager needs the employee's **email/files**.
- [ ] Create the offboarding ticket.

## 2. Revoke Access (at the effective time)
- [ ] **Disable** the Entra ID account (do **not** delete yet).
- [ ] **Reset the password** and **revoke active sessions/tokens** (forces immediate sign-out).
- [ ] **Block sign-in.**
- [ ] Remove from all **security and distribution groups** (VPN, shared mailbox, department, etc.).

## 3. Preserve Data
- [ ] Convert the mailbox to a **shared mailbox** and delegate to the **manager**.
- [ ] Delegate or retain **OneDrive** files for the manager per policy.
- [ ] Note any files on shared drives owned by the user.

## 4. Recover Hardware
- [ ] Collect the laptop/desktop, chargers, and any peripherals.
- [ ] Queue the device for **reimaging** before reissue.
- [ ] Update the asset inventory.

## 5. Licensing & Cleanup
- [ ] After the **retention period**, reclaim the **M365 license**.
- [ ] After retention, delete/archive the account per policy.
- [ ] Log all actions in the ticket.

## Escalation
- Urgent/involuntary termination requiring **immediate lockout** → coordinate with **Level 2 + HR**.
- **Legal hold / eDiscovery** requirements → **Level 2 / compliance**.
