---
x-trestle-comp-def-rules:
  IDSERVICE:
    - name: idservice_password_min_length
      description: Ensure min. length of password
x-trestle-global:
  profile:
    title: ACME Inc. official controls profile.
    href: trestle://profiles/ACME_official/profile.json
---

# pr-1 - \[Privilege Rating\] Right to access and deletion of records

## Control Statement

Any service or offering MUST:

- \[a\] Have a privacy focal to respond to deletion requests.

- \[b\] Have an automated method for allowing users to access all of their data

- \[c\] Have an automated method to allow users to request, and subsequently execute, deletion of personal records.

- \[d\] The process must be documented.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: pr-1 -->

### Rules:

  - idservice_password_min_length

### Implementation Status: planned

______________________________________________________________________
