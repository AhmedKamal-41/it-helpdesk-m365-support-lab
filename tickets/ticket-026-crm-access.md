# TKT-026 — Request Access to CRM

| Field | Detail |
|-------|--------|
| **Ticket ID** | TKT-026 |
| **Title** | New sales rep needs CRM access |
| **User** | Ava Turner (aturner) |
| **Department** | Sales |
| **Category** | Access Request |
| **Priority** | P3 – Medium |
| **Status** | Resolved |
| **Escalation Needed?** | No |

## User Description
"I've moved into a sales role and need access to our CRM to log customer activity, but I can't sign in."

## Business Impact
Sales rep cannot log or track customer activity. Blocked for a core part of the role.

## Troubleshooting Steps
1. Confirmed the request through the Access Request Workflow — CRM access needs manager approval.
2. Obtained approval from Lucas Green (Sales Manager).
3. Verified the user was in the "Sales Team" security group (required for CRM SSO).
4. Confirmed the CRM app was assigned to the Sales Team group in Entra ID (single sign-on).
5. Had the user sign in via SSO; access granted with the correct sales role/permissions.

## Root Cause
User's move to Sales required CRM access that had not been provisioned. Routine access request.

## Resolution
With manager approval, confirmed group membership and CRM app assignment, then validated single sign-on. User can now access the CRM with appropriate permissions.

## User-Facing Final Response
> Hi Ava, your CRM access is set up (approved by Lucas). You can sign in with your QueensTech account using single sign-on — no separate password needed. I confirmed you can view and log customer activity. Let me know if any records look restricted. — IT Help Desk

## Prevention / Follow-Up Notes
- Access provisioned via group + app assignment (SSO), not a standalone login.
- Approval archived with the ticket.
