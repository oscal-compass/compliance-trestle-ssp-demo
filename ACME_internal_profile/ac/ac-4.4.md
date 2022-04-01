---
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
x-trestle-set-params:
  ac-4.4_prm_1:
    values:
      - blocking the flow of the encrypted information
      - ACME internal method
    select:
      choice:
        - decrypting the information
        - blocking the flow of the encrypted information
        - terminating communications sessions attempting to pass encrypted information
        - ACME internal method
      how_many: one_or_more
  ac-4.4_prm_2:
    values: ACME internal method
    label: organization-defined procedure or method
sort-id: ac-04.04
---

# ac-4.4 - \[Access Control\] Content Check Encrypted Information

## Control Statement

The information system prevents encrypted information from bypassing content-checking mechanisms by {{ insert: param, ac-4.4_prm_1 }}.

## Control Objective

Determine if:

- \[AC-4(4)[1]\] the organization defines a procedure or method to be employed to prevent encrypted information from bypassing content-checking mechanisms;

- \[AC-4(4)[2]\] the information system prevents encrypted information from bypassing content-checking mechanisms by doing one or more of the following:

  - \[AC-4(4)[2][a]\] decrypting the information;
  - \[AC-4(4)[2][b]\] blocking the flow of the encrypted information;
  - \[AC-4(4)[2][c]\] terminating communications sessions attempting to pass encrypted information; and/or
  - \[AC-4(4)[2][d]\] employing the organization-defined procedure or method.

# Editable Content

<!-- Make additions and edits below -->
<!-- The above represents the contents of the control as received by the profile, prior to additions. -->
<!-- If the profile makes additions to the control, they will appear below. -->
<!-- The above markdown may not be edited but you may edit the content below, and/or introduce new additions to be made by the profile. -->
<!-- If there is a yaml header at the top, parameter values may be edited. Use --set-parameters to incorporate the changes during assembly. -->
<!-- The content here will then replace what is in the profile for this control, after running profile-assemble. -->
<!-- The current profile has no added parts for this control, but you may add new ones here. -->
<!-- Each addition must have a heading of the form ## Control my_addition_name -->
<!-- See https://ibm.github.io/compliance-trestle/tutorials/ssp_profile_catalog_authoring/ssp_profile_catalog_authoring for guidance. -->
