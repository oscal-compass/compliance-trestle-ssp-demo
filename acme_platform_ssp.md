ACME  Platform SSP

# ACME Platform overview
This is the frontmatter for the ACME System Security Plan

<!-- This iterates over the controls in a resolved catalog and prints out the control statement, summary table,
and implemented requirements in a format similar to a FedRAMP .docx

The groups are sorted by id and the controls are sorted within each group by sort-id if defined for the control.

The control tables for parameters are output with the param_id in the first column followed either by a single
'Values' column, or two columns: 'Values' and 'Label or Choice'.  In the one-column case, values are listed if available
and if not the descriptive label is shown, unless the parameter has a Select defined, in which case the choice options
are shown.

In the two-column case the Values column is empty if no values are defined, and the Label or Choice column is either the
list of optional choices if the parameter has a Select defined, else just the descriptive label for the parameter.

To choose the one- or two- column option, specify false or true, respectively, as the final parameter in
get_fedramp_control_tables().
-->

# Control responses and guidance

## Access Control  \(AC\)


### AC-1 - Access Control Policy and Procedures

#### Control Statement

The organization:

- \[a.\] Develops, documents, and disseminates to executives:

  - \[1.\] An access control policy that addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
  - \[2.\] Procedures to facilitate the implementation of the access control policy and associated access controls; and

- \[b.\] Reviews and updates the current:

  - \[1.\] Access control policy monthly; and
  - \[2.\] Access control procedures weekly.


#### AC-1 Summary information


| Parameter ID | Values | Label or Choices |
|---|---|---|
| ac-1_prm_1 | executives | organization-defined personnel or roles |
| ac-1_prm_2 | monthly | organization-defined frequency |
| ac-1_prm_3 | weekly | organization-defined frequency |

##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

##### Part a.

Add control implementation description here for item ac-1_smt.a

##### Part b.

Add control implementation description here for item ac-1_smt.b

### AC-2 - Account Management

#### Control Statement

The organization:

- \[a.\] Identifies and selects the following types of information system accounts to support organizational missions/business functions: privileged;

- \[b.\] Assigns account managers for information system accounts;

- \[c.\] Establishes conditions for group and role membership;

- \[d.\] Specifies authorized users of the information system, group and role membership, and access authorizations (i.e., privileges) and other attributes (as required) for each account;

- \[e.\] Requires approvals by ACME interal method for requests to create information system accounts;

- \[f.\] Creates, enables, modifies, disables, and removes information system accounts in accordance with standard operations;

- \[g.\] Monitors the use of information system accounts;

- \[h.\] Notifies account managers:

  - \[1.\] When accounts are no longer required;
  - \[2.\] When users are terminated or transferred; and
  - \[3.\] When individual information system usage or need-to-know changes;

- \[i.\] Authorizes access to the information system based on:

  - \[1.\] A valid access authorization;
  - \[2.\] Intended system usage; and
  - \[3.\] Other attributes as required by the organization or associated missions/business functions;

- \[j.\] Reviews accounts for compliance with account management requirements daily; and

- \[k.\] Establishes a process for reissuing shared/group account credentials (if deployed) when individuals are removed from the group.


#### AC-2 Summary information


| Parameter ID | Values | Label or Choices |
|---|---|---|
| ac-2_prm_1 | privileged | organization-defined information system account types |
| ac-2_prm_2 | ACME interal method | organization-defined personnel or roles |
| ac-2_prm_3 | standard operations | organization-defined procedures or conditions |
| ac-2_prm_4 | daily | organization-defined frequency |

##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

##### Part a.

Add control implementation description here for item ac-2_smt.a

##### Part b.

Add control implementation description here for item ac-2_smt.b

##### Part c.

Add control implementation description here for item ac-2_smt.c

##### Part d.

Add control implementation description here for item ac-2_smt.d

##### Part e.

Add control implementation description here for item ac-2_smt.e

##### Part f.

Add control implementation description here for item ac-2_smt.f

##### Part g.

Add control implementation description here for item ac-2_smt.g

##### Part h.

Add control implementation description here for item ac-2_smt.h

##### Part i.

Add control implementation description here for item ac-2_smt.i

##### Part j.

Add control implementation description here for item ac-2_smt.j

##### Part k.

Add control implementation description here for item ac-2_smt.k

### AC-2(1) - Automated System Account Management

#### Control Statement

The organization employs automated mechanisms to support the management of information system accounts.


#### AC-2(1) Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control ac-2.1

### AC-4(4) - Content Check Encrypted Information

#### Control Statement

The information system prevents encrypted information from bypassing content-checking mechanisms by blocking the flow of the encrypted information, ACME internal method.


#### AC-4(4) Summary information


| Parameter ID | Values | Label or Choices |
|---|---|---|
| ac-4.4_prm_1 | blocking the flow of the encrypted information, ACME internal method | Choose one or more: decrypting the information; blocking the flow of the encrypted information; terminating communications sessions attempting to pass encrypted information; ACME internal method |
| ac-4.4_prm_2 | ACME internal method | organization-defined procedure or method |

##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control ac-4.4

## Custom Controls  \(CC\)


### CC-1 - Energy consumption

#### Control Statement

All services should report energy consumed by their service.


####  Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control cc-1

### CC-2 - Carbon reporting

#### Control Statement

All services must calculate and report total scope 3 energy consumption.


####  Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control cc-2

## Privilege Rating  \(PR\)


### PR-1 - Right to access and deletion of records

#### Control Statement

Any service or offering MUST:

- \[a\] Have a privacy focal to respond to deletion requests.

- \[b\] Have an automated method for allowing users to access all of their data

- \[c\] Have an automated method to allow users to request, and subsequently execute, deletion of personal records.

- \[d\] The process must be documented.


####  Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

##### Part a

Add control implementation description here for item pr-1_smt.a

##### Part b

Add control implementation description here for item pr-1_smt.b

##### Part c

Add control implementation description here for item pr-1_smt.c

##### Part d

Add control implementation description here for item pr-1_smt.d

### PR-2 - Registering exemptions to right to delete

#### Control Statement


####  Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control pr-2

## System and Communications Protection  \(SC\)


### SC-1 - System and Communications Protection Policy and Procedures

#### Control Statement

The organization:

- \[a.\] Develops, documents, and disseminates to assistants:

  - \[1.\] A system and communications protection policy that addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
  - \[2.\] Procedures to facilitate the implementation of the system and communications protection policy and associated system and communications protection controls; and

- \[b.\] Reviews and updates the current:

  - \[1.\] System and communications protection policy hourly; and
  - \[2.\] System and communications protection procedures bi-monthly.


#### SC-1 Summary information


| Parameter ID | Values | Label or Choices |
|---|---|---|
| sc-1_prm_1 | assistants | organization-defined personnel or roles |
| sc-1_prm_2 | hourly | organization-defined frequency |
| sc-1_prm_3 | bi-monthly | organization-defined frequency |

##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

##### Part a.

Add control implementation description here for item sc-1_smt.a

##### Part b.

Add control implementation description here for item sc-1_smt.b

### SC-2 - Application Partitioning

#### Control Statement

The information system separates user functionality (including user interface services) from information system management functionality.


#### SC-2 Summary information


##### FedRamp Implementation Status.

- Implemented

- Partially implemented

- Planned

- Alternative implementation

- Not Applicable

##### FedRamp Control Origination.

- Service provider Corporate

- Service provider System Specific

- Service Provider Hybrid (Corporate and System Specific)

- Configured by Customer (Customer System Specific)

- Provided by Customer (Customer System Specific)

- Shared (Service Provider and Customer Responsibility)

- Inherited from pre-existing FedRAMP Authorization [Enter text here], Date of Authorization

#### What is the solution and how is it implemented?

Add control implementation description here for control sc-2