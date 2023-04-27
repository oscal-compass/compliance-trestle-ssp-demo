---
x-trestle-set-params:
  # You may set values for parameters in the assembled Profile by adding
  #
  # profile-values:
  #   - value 1
  #   - value 2
  #
  # below a section of values:
  # The values list refers to the values in the catalog, and the profile-values represent values
  # in SetParameters of the Profile.
  #
  ac-1_prm_1:
    label: organization-defined personnel or roles
    profile-values:
      - executives
    values:
  ac-1_prm_2:
    values:
  ac-1_prm_3:
    label: organization-defined frequency
    profile-values:
      - weekly
    values:
x-trestle-global:
  profile:
    title: ACME Inc. official controls profile.
  sort-id: ac-01
---

# ac-1 - \[Access Control\] Access Control Policy and Procedures

## Control Statement

The organization:

- \[a.\] Develops, documents, and disseminates to {{ insert: param, ac-1_prm_1 }}:

  - \[1.\] An access control policy that addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
  - \[2.\] Procedures to facilitate the implementation of the access control policy and associated access controls; and

- \[b.\] Reviews and updates the current:

  - \[1.\] Access control policy {{ insert: param, ac-1_prm_2 }}; and
  - \[2.\] Access control procedures {{ insert: param, ac-1_prm_3 }}.

## Control Objective

Determine if the organization:

- \[AC-1(a)\]

  - \[AC-1(a)(1)\]

    - \[AC-1(a)(1)[1]\] develops and documents an access control policy that addresses:

      - \[AC-1(a)(1)[1][a]\] purpose;
      - \[AC-1(a)(1)[1][b]\] scope;
      - \[AC-1(a)(1)[1][c]\] roles;
      - \[AC-1(a)(1)[1][d]\] responsibilities;
      - \[AC-1(a)(1)[1][e]\] management commitment;
      - \[AC-1(a)(1)[1][f]\] coordination among organizational entities;
      - \[AC-1(a)(1)[1][g]\] compliance;

    - \[AC-1(a)(1)[2]\] defines personnel or roles to whom the access control policy are to be disseminated;
    - \[AC-1(a)(1)[3]\] disseminates the access control policy to organization-defined personnel or roles;

  - \[AC-1(a)(2)\]

    - \[AC-1(a)(2)[1]\] develops and documents procedures to facilitate the implementation of the access control policy and associated access control controls;
    - \[AC-1(a)(2)[2]\] defines personnel or roles to whom the procedures are to be disseminated;
    - \[AC-1(a)(2)[3]\] disseminates the procedures to organization-defined personnel or roles;

- \[AC-1(b)\]

  - \[AC-1(b)(1)\]

    - \[AC-1(b)(1)[1]\] defines the frequency to review and update the current access control policy;
    - \[AC-1(b)(1)[2]\] reviews and updates the current access control policy with the organization-defined frequency;

  - \[AC-1(b)(2)\]

    - \[AC-1(b)(2)[1]\] defines the frequency to review and update the current access control procedures; and
    - \[AC-1(b)(2)[2]\] reviews and updates the current access control procedures with the organization-defined frequency.

## Control guidance

This control addresses the establishment of policy and procedures for the effective implementation of selected security controls and control enhancements in the AC family. Policy and procedures reflect applicable federal laws, Executive Orders, directives, regulations, policies, standards, and guidance. Security program policies and procedures at the organization level may make the need for system-specific policies and procedures unnecessary. The policy can be included as part of the general information security policy for organizations or conversely, can be represented by multiple policies reflecting the complex nature of certain organizations. The procedures can be established for the security program in general and for particular information systems, if needed. The organizational risk management strategy is a key factor in establishing policy and procedures.

# Editable Content

<!-- Make additions and edits below -->
<!-- The above represents the contents of the control as received by the profile, prior to additions. -->
<!-- If the profile makes additions to the control, they will appear below. -->
<!-- The above markdown may not be edited but you may edit the content below, and/or introduce new additions to be made by the profile. -->
<!-- If there is a yaml header at the top, parameter values may be edited. Use --set-parameters to incorporate the changes during assembly. -->
<!-- The content here will then replace what is in the profile for this control, after running profile-assemble. -->
<!-- The current profile has no added parts for this control, but you may add new ones here. -->
<!-- Each addition must have a heading either of the form ## Control my_addition_name -->
<!-- or ## Part a. (where the a. refers to one of the control statement labels.) -->
<!-- "## Control" parts are new parts added after the statement part. -->
<!-- "## Part" parts are new parts added into the top-level statement part with that label. -->
<!-- Subparts may be added with nested hash levels of the form ### My Subpart Name -->
<!-- underneath the parent ## Control or ## Part being added -->
<!-- See https://ibm.github.io/compliance-trestle/tutorials/ssp_profile_catalog_authoring/ssp_profile_catalog_authoring for guidance. -->
