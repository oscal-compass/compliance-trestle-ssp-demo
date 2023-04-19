---
x-trestle-comp-def-rules:
  IDSERVICE:
    - name: idservice_password_min_length
      description: Ensure min. length of password
    - name: idservice_strong_pass_enabled
      description: Ensure strong password policy with mix of alphabets, digits, and
        special chars
  DB:
    - name: db_password_min_length
      description: Ensure min. length of password
x-trestle-rules-params:
  IDSERVICE:
    - name: idservice_min_pass_len
      description: Min. password length
      options: 8, 12, 16
      rule-id: idservice_password_min_length
  DB:
    - name: db_min_pass_len
      description: Min. password length
      options: 8, 12, 16
      rule-id: db_password_min_length
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
    - name: db_min_pass_len
      values:
        - '16'
x-trestle-set-params:
  # You may set values for parameters in the assembled SSP by adding
  #
  # ssp-values:
  #   - value 1
  #   - value 2
  #
  # below a section of values:
  # The values list refers to the values in the resolved profile catalog, and the ssp-values represent new values
  # to be placed in SetParameters of the SSP.
  #
  ia-5.4_prm_1:
    values:
      - assistants
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
  sort-id: ia-05.04
---

# ia-5.4 - \[Identification and Authentication\] Automated Support for Password Strength Determination

## Control Statement

The organization employs automated tools to determine if password authenticators are sufficiently strong to satisfy [assistants].

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

### This System

<!-- Add implementation prose for the main This System component for control: ia-5.4 -->

#### Implementation Status: planned

### DB

<!-- Add control implementation description here for control: ia-5.4 -->

#### Rules:

  - db_password_min_length

#### Implementation Status: planned

### IDSERVICE

<!-- Add control implementation description here for control: ia-5.4 -->

#### Rules:

  - idservice_password_min_length
  - idservice_strong_pass_enabled

#### Implementation Status: planned

______________________________________________________________________
