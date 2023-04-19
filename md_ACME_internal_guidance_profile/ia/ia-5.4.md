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
  ia-5.4_prm_1:
    values:
      - assistants
x-trestle-global:
  profile:
    title: ACME Inc. internal controls profile.
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
