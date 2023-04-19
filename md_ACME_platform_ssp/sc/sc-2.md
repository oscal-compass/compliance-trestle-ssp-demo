---
x-trestle-comp-def-rules:
  DB:
    - name: db_password_not_reuse_min_count
      description: 'Ensure password is not reused below # count'
x-trestle-rules-params:
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
  sort-id: sc-02
---

# sc-2 - \[System and Communications Protection\] Application Partitioning

## Control Statement

The information system separates user functionality (including user interface services) from information system management functionality.

## Control Objective

Determine if the information system separates user functionality (including user interface services) from information system management functionality.

## Control guidance

Information system management functionality includes, for example, functions necessary to administer databases, network components, workstations, or servers, and typically requires privileged user access. The separation of user functionality from information system management functionality is either physical or logical. Organizations implement separation of system management-related functionality from user functionality by using different computers, different central processing units, different instances of operating systems, different network addresses, virtualization techniques, or combinations of these or other methods, as appropriate. This type of separation includes, for example, web administrative interfaces that use separate authentication methods for users of any other information system resources. Separation of system and user functionality may include isolating administrative interfaces on different domains and with additional access controls.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: sc-2 -->

#### Implementation Status: planned

### DB

<!-- Add control implementation description here for control: sc-2 -->

#### Rules:

  - db_password_not_reuse_min_count

#### Implementation Status: planned

______________________________________________________________________
