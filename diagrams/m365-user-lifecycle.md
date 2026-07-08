# Diagram — Microsoft 365 / Entra ID User Lifecycle

The identity lifecycle a user goes through at QueensTech, from hire to departure.

```mermaid
flowchart LR
    A[New Hire Request<br/>from HR] --> B[Create Entra ID account]
    B --> C[Assign M365 license]
    C --> D[Add to security groups]
    D --> E[Enforce MFA at first sign-in]
    E --> F[Provision mailbox + device]
    F --> G[Active Employee]

    G --> H{Change during<br/>employment?}
    H -- Role change --> I[Update groups / access]
    H -- New device / phone --> J[Reset MFA / reconfigure]
    H -- Password issue --> K[Reset / unlock]
    I --> G
    J --> G
    K --> G

    G --> L[Departure notice from HR]
    L --> M[Disable account + revoke sessions]
    M --> N[Preserve mailbox & OneDrive]
    N --> O[Remove group memberships]
    O --> P[Reclaim license after retention]
    P --> Q[Archive / delete per policy]
```

**Stages**
1. **Join** — account, license, groups, MFA, device.
2. **Move** — access, MFA, and password changes while employed.
3. **Leave** — disable, preserve data, reclaim license.
