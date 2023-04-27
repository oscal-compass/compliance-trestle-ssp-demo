---
x-trestle-comp-def-rules:
  IDSERVICE:
    - name: idservice_password_min_length
      description: Ensure min. length of password
    - name: idservice_strong_pass_enabled
      description: Ensure strong password policy with mix of alphabets, digits, and
        special chars
x-trestle-param-values:
  ia-5.4_prm_1:
    - assistants
x-trestle-global:
  profile:
    title: ACME Inc. official controls profile.
    href: trestle://profiles/ACME_official/profile.json
  sort-id: ia-05.04
---

# ia-5.4 - \[Identification and Authentication\] Automated Support for Password Strength Determination

## Control Statement

The organization employs automated tools to determine if password authenticators are sufficiently strong to satisfy {{ insert: param, ia-5.4_prm_1 }}.

## Control Objective

Determine if the organization:

- \[IA-5(4)[1]\] defines requirements to be satisfied by password authenticators; and

- \[IA-5(4)[2]\] employs automated tools to determine if password authenticators are sufficiently strong to satisfy organization-defined requirements.

## Control guidance

This control enhancement focuses on the creation of strong passwords and the characteristics of such passwords (e.g., complexity) prior to use, the enforcement of which is carried out by organizational information systems in IA-5 (1).

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: ia-5.4 -->

### Rules:

  - idservice_password_min_length
  - idservice_strong_pass_enabled

### Implementation Status: planned

______________________________________________________________________
