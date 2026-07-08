# TKT-011 — Install Adobe Reader

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-011 |
| **Title** | Request to install Adobe Acrobat Reader |
| **User** | Zara Ahmed (zahmed) |
| **Department** | Operations |
| **Category** | Software Installation |
| **Priority** | P4 – Low |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I need to open and fill out PDF forms but I don't have a proper PDF reader installed."

## Business Impact
Low — user can view PDFs in the browser but cannot use full form features. A convenience/productivity request.

## Troubleshooting Steps
1. Confirmed the request is for approved, standard company software (Adobe Acrobat Reader is on the approved list).
2. Verified the user's device met requirements and had free disk space (`Check-DiskSpace.ps1`).
3. Installed Adobe Acrobat Reader from the approved software source.
4. Set Reader as the default PDF application per user preference.
5. Opened a sample PDF form to confirm the install worked.

## Root Cause
Standard software was simply not part of the base image on this device. Routine install request.

## Resolution
Installed Adobe Acrobat Reader, set it as the default PDF handler, and verified functionality with a test PDF form.

## User-Facing Final Response
> Hi Zara, Adobe Acrobat Reader is now installed and set as your default PDF app. You can open, view, and fill out PDF forms directly. Let me know if you'd like a quick walkthrough of the form-filling tools. — IT Help Desk

## Prevention / Follow-Up Notes
- Adobe Reader is approved software; no manager approval required.
- Logged install for software inventory.
