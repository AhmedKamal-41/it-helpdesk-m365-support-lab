# Diagram — Help Desk Ticket Workflow

How a ticket flows through QueensTech's Level 1 Help Desk from intake to closure.

```mermaid
flowchart TD
    A[User reports an issue] --> B[Ticket created & logged]
    B --> C[Categorize + set Priority P1-P4]
    C --> D[Verify user identity]
    D --> E{Known fix in<br/>Knowledge Base?}
    E -- Yes --> F[Apply documented steps]
    E -- No --> G[Troubleshoot & document steps]
    F --> H{Resolved?}
    G --> H
    H -- Yes --> I[Confirm with user]
    H -- No --> J{Within Level 1 scope<br/>& SLA?}
    J -- Yes --> G
    J -- No --> K[Escalate to Level 2<br/>with full notes]
    K --> L[Level 2 resolves]
    L --> I
    I --> M[Send user-facing response]
    M --> N[Record root cause]
    N --> O[Update Knowledge Base if reusable]
    O --> P[Close ticket]
```

**Key points**
- Every ticket is categorized and prioritized before work begins.
- Identity is verified before any account action.
- The KB is checked first and updated after — the loop that makes support faster over time.
- Escalation always carries full documented notes.
