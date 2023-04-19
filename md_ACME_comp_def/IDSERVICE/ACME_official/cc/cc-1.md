---
x-trestle-comp-def-rules:
  IDSERVICE:
    - name: idservice_password_min_length
      description: Ensure min. length of password
    - name: idservice_strong_pass_enabled
      description: Ensure strong password policy with mix of alphabets, digits, and
        special chars
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

  - idservice_password_min_length
  - idservice_strong_pass_enabled

### Implementation Status: planned

______________________________________________________________________
