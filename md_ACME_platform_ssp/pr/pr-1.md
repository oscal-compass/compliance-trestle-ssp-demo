---
x-trestle-comp-def-rules:
  IDSERVICE:
    - name: idservice_password_min_length
      description: Ensure min. length of password
  DB:
    - name: db_password_not_reuse_min_count
      description: 'Ensure password is not reused below # count'
x-trestle-rules-params:
  IDSERVICE:
    - name: idservice_min_pass_len
      description: Min. password length
      options: 8, 12, 16
      rule-id: idservice_password_min_length
  DB:
    - name: db_min_pass_reuse_count
      description: Min. password reuse count
      options: 4, 8
      rule-id: db_password_not_reuse_min_count
x-trestle-comp-def-rules-param-vals:
  # You may set new values for rule parameters by adding
  #
  # ssp-values:
  #   - value 1
  #   - value 2
  #
  # below a section of values:
  # The values list refers to the values as set by the components, and the ssp-values are the new values
  # to be placed in SetParameters of the SSP.
  #
  IDSERVICE:
    - name: idservice_min_pass_len
      values:
        - '8'
  DB:
    - name: db_min_pass_reuse_count
      values:
        - '8'
x-trestle-evidence:
  named-evidence: location
x-trestle-dependent-on:
  - control-id:
    profile:
reviewed-by:
  - named:
    date:
x-trestle-fedramp-props:
  control-origination:
    - Service provider Corporate
    - Service provider System Specific
    - Service Provider Hybrid (Corporate and System Specific)
    - Configured by Customer (Customer System Specific)
    - Provided by Customer (Customer System Specific)
    - Shared (Service Provider and Customer Responsibility)
    - Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of
      Authorization
  implementation-status:
    - Implemented
    - Partially implemented
    - Planned
    - Alternative implementation
    - Not Applicable
  responsible-roles:
x-trestle-global:
  profile:
    title: ACME Inc. internal controls profile.
    href: trestle://profiles/ACME_int_guidance/profile.json
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

### This System

<!-- Add implementation prose for the main This System component for control: pr-1 -->

#### Implementation Status: planned

### DB

<!-- Add control implementation description here for control: pr-1 -->

#### Rules:

  - db_password_not_reuse_min_count

#### Implementation Status: planned

### IDSERVICE

<!-- Add control implementation description here for control: pr-1 -->

#### Rules:

  - idservice_password_min_length

#### Implementation Status: planned

______________________________________________________________________
