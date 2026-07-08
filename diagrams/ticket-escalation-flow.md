# Diagram — Ticket Escalation Flow

When and how a Level 1 ticket escalates to Level 2 at QueensTech.

```mermaid
flowchart TD
    A[Ticket in progress at Level 1] --> B{Requires admin /<br/>tenant access?}
    B -- Yes --> E[Escalate to Level 2]
    B -- No --> C{Security incident?<br/>phishing / compromise}
    C -- Yes --> E
    C -- No --> D{Hardware replacement<br/>or purchase needed?}
    D -- Yes --> E
    D -- No --> F{Level 1 steps done<br/>but unresolved,<br/>or SLA breached?}
    F -- Yes --> E
    F -- No --> G[Continue Level 1<br/>troubleshooting]
    G --> H{Resolved?}
    H -- Yes --> I[Confirm & close]
    H -- No --> F

    E --> J[Set status: Escalated<br/>Attach full notes + logs]
    J --> K[Level 2 investigates & resolves]
    K --> L[Root cause recorded]
    L --> I
```

**Escalate to Level 2 when:**
- Admin / tenant-level access is required (Conditional Access, licensing, groups).
- There is a security incident.
- Hardware replacement or a purchase must be approved.
- Level 1 steps are exhausted or the SLA is breached.
