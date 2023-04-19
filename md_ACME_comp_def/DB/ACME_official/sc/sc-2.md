---
x-trestle-comp-def-rules:
  DB:
    - name: db_password_not_reuse_min_count
      description: 'Ensure password is not reused below # count'
x-trestle-global:
  profile:
    title: ACME Inc. official controls profile.
    href: trestle://profiles/ACME_official/profile.json
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

<!-- Add control implementation description here for control: sc-2 -->

### Rules:

  - db_password_not_reuse_min_count

### Implementation Status: planned

______________________________________________________________________
