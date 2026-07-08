# Workflow — New Hire Onboarding Checklist

**Owner:** IT Help Desk (Level 1) | **Trigger:** HR submits a new-hire request | **Target:** Ready by start date

> Goal: give every new employee working accounts, email, correct access, and a configured device on day one — with no missed steps.

---

## 1. Intake (before setup)
- [ ] Receive HR request with: full name, department, job title, **manager**, **start date**, work location (office/remote).
- [ ] Note any role-specific software or shared mailbox needs.
- [ ] Create the onboarding ticket and set a due date **before** the start date.

## 2. Identity & Licensing
- [ ] Create the Entra ID account (username = first initial + last name, e.g., `bfoster`).
- [ ] Set display name and email (`user@queenstech.example`).
- [ ] Assign the correct **Microsoft 365 license** (Basic / Standard / Premium per role).
- [ ] Require **MFA registration at first sign-in**.

## 3. Access & Groups
- [ ] Add to the **department team** group (e.g., Operations Team).
- [ ] Add to **New Hires** group.
- [ ] Add to **Printer Access Group**.
- [ ] If remote: add to **VPN Users** group (per approval).
- [ ] Grant any **shared mailbox** access required for the role.

## 4. Mailbox & Apps
- [ ] Confirm the mailbox is provisioned; send a test email.
- [ ] Confirm Outlook, Teams, and OneDrive are ready.

## 5. Device Setup
- [ ] Image a **Windows 11** laptop/desktop with the standard build.
- [ ] Install Microsoft 365 apps, Teams, OneDrive, and approved role software.
- [ ] Run `Get-DeviceHealth.ps1` to confirm the device is healthy before handoff.
- [ ] Label/asset-tag the device and record it in inventory.

## 6. Handoff
- [ ] Provide a **Day-1 login guide** (username, first sign-in + MFA steps).
- [ ] Brief the manager on what's ready and any pending items.
- [ ] Close the ticket with all steps logged.

## Escalation
- Special/paid licenses (Project, Visio) → **Level 2** for budget approval.
- Elevated or non-standard permissions → **Level 2** approval.
