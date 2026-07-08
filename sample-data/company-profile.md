# Company Profile — QueensTech Office Services

> **Note:** QueensTech Office Services is a **fictional company** created for a hands-on IT support portfolio lab. All names, users, and data are fake. No real credentials, customer data, or secrets appear anywhere in this project.

---

## Overview

| Field | Detail |
|-------|--------|
| **Company Name** | QueensTech Office Services |
| **Industry** | Professional / Back-office business services |
| **Size** | 25 employees |
| **Location** | Single office + hybrid remote workers |
| **IT Team** | 1 IT Manager (Level 2), 1 Level 1 Help Desk Technician |

QueensTech Office Services is a small business that relies on Microsoft 365 for email, collaboration, and file storage. Because the company is small, the Level 1 Help Desk technician is the **first point of contact** for all IT issues and handles the majority of day-to-day support.

---

## Departments

| Department | Approx. Headcount | Typical IT Needs |
|------------|-------------------|------------------|
| **HR** | 3 | Onboarding/offboarding, shared mailbox, confidential file access |
| **Finance** | 4 | Accounting software, printers, secured shared folders, VPN |
| **Operations** | 6 | Shared drives, printers, Teams, standard M365 apps |
| **Sales** | 6 | Mobile/remote access, VPN, Outlook, Teams, OneDrive |
| **Management** | 3 | Full access, priority support, reporting |
| **IT** | 3 | Administration, scripting, escalations |

---

## Standard Technology Stack

**End-User Devices**
- Windows 11 Pro laptops and desktops
- Standard corporate image with company apps pre-installed

**Productivity & Collaboration**
- Microsoft 365 (Business Standard / Business Premium licenses)
- Outlook (email + calendar)
- Microsoft Teams (chat, meetings, calls)
- OneDrive for Business (file sync/backup)
- SharePoint / shared folders (department drives)

**Identity & Security**
- Microsoft Entra ID (formerly Azure AD) for identity
- Multi-Factor Authentication (MFA) required for all users
- Conditional Access policies managed by IT Manager

**Network & Peripherals**
- Office Wi-Fi (corporate + guest SSIDs)
- VPN for remote/hybrid staff
- Networked multifunction printers (print, scan, copy)

---

## Support Model

QueensTech uses a **two-tier support model**:

### Level 1 — Help Desk (First Response)
Handles the first contact for all tickets. Responsible for:
- Password resets and account unlocks
- MFA re-enrollment help
- Outlook, Teams, OneDrive troubleshooting
- Printer, Wi-Fi, and basic network issues
- Software installation requests
- New hire setup and offboarding tasks
- Logging, categorizing, and prioritizing every ticket

### Level 2 — IT Manager (Escalation)
Handles issues that exceed Level 1 scope:
- Entra ID / Conditional Access policy changes
- Server, licensing, and tenant-level configuration
- Security incidents and confirmed phishing
- Hardware replacement approvals
- Root-cause analysis for recurring problems

**Escalation rule:** Level 1 attempts documented troubleshooting first. If unresolved within the priority SLA — or if the issue requires admin/tenant access — it is escalated to Level 2 with full notes attached.

---

## Service Priorities (SLA Targets)

| Priority | Example | First Response | Target Resolution |
|----------|---------|----------------|-------------------|
| **P1 – Critical** | Whole team can't work, exec down, security incident | 15 min | 2 hours |
| **P2 – High** | Single user fully blocked (locked out, no email) | 30 min | 4 hours |
| **P3 – Medium** | Degraded but working (slow sync, one app broken) | 4 hours | 1 business day |
| **P4 – Low** | Request / minor issue (software install, how-to) | 1 business day | 3 business days |

---

## Business Hours & Contact

- **Support Hours:** Mon–Fri, 8:00 AM – 6:00 PM
- **Ticket Intake:** Email to helpdesk@queenstech.example, Teams message, or walk-up
- **After-hours:** P1 only, via on-call IT Manager
