# Workflow — Ticket Escalation

**Owner:** IT Help Desk (Level 1) → IT Manager (Level 2) | **Trigger:** An issue exceeds Level 1 scope or SLA.

> Goal: escalate cleanly with full context so Level 2 can resolve quickly — never dump a ticket without notes.

---

## When to Escalate
Escalate to **Level 2** when any of these are true:
- Requires **admin/tenant access** (Conditional Access, licensing, security groups, mail flow rules).
- **Security incident** (confirmed phishing, compromised account, data exposure).
- **Hardware replacement** or purchase approval needed.
- Documented Level 1 troubleshooting **did not resolve** the issue.
- The issue **breaches the priority SLA** and is still open.
- Affects **multiple users** / possible outage.

## Before You Escalate (do this first)
- [ ] Complete and **document** the standard Level 1 troubleshooting steps.
- [ ] Verify user identity and gather details (user, device, error messages, timing).
- [ ] Note what you've already tried and the result.
- [ ] Set/confirm the correct **priority**.

## How to Escalate
- [ ] Update the ticket **status → Escalated**.
- [ ] Add a clear summary: symptom, impact, steps taken, suspected cause, what's needed from Level 2.
- [ ] Attach relevant logs/screenshots.
- [ ] Notify the IT Manager via the agreed channel (ticket + Teams for P1/P2).

## Priority → Response Targets
| Priority | Example | First Response | Target Resolution |
|----------|---------|----------------|-------------------|
| P1 Critical | Outage, exec down, security incident | 15 min | 2 hours |
| P2 High | Single user fully blocked | 30 min | 4 hours |
| P3 Medium | Degraded but working | 4 hours | 1 business day |
| P4 Low | Request / how-to | 1 business day | 3 business days |

## After Escalation
- [ ] Keep the user informed of status.
- [ ] When Level 2 resolves, capture the **root cause** back in the ticket.
- [ ] Add anything reusable to the **knowledge base**.
