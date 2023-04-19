---
x-trestle-comp-def-rules:
  DB:
    - name: db_password_min_length
      description: Ensure min. length of password
x-trestle-global:
  profile:
    title: ACME Inc. official controls profile.
    href: trestle://profiles/ACME_official/profile.json
---

# cc-1 - \[Custom Controls\] Energy consumption

## Control Statement

All services should report energy consumed by their service.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: cc-1 -->

### Rules:

  - db_password_min_length

### Implementation Status: planned

______________________________________________________________________
