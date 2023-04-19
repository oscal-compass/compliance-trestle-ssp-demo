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
  ia-5.1_prm_1:
    values:
      - blocking the flow of the encrypted information
      - ACME internal method
  ia-5.1_prm_2:
    values:
      - ACME internal method
  ia-5.1_prm_3:
    values:
      - ACME improved method
  ia-5.1_prm_4:
    values:
      - ACME final method
x-trestle-global:
  profile:
    title: ACME Inc. internal controls profile.
  sort-id: ia-05.01
---

# ia-5.1 - \[Identification and Authentication\] Password-based Authentication

## Control Statement

The information system, for password-based authentication:

- \[(a)\] Enforces minimum password complexity of {{ insert: param, ia-5.1_prm_1 }};

- \[(b)\] Enforces at least the following number of changed characters when new passwords are created: {{ insert: param, ia-5.1_prm_2 }};

- \[(c)\] Stores and transmits only cryptographically-protected passwords;

- \[(d)\] Enforces password minimum and maximum lifetime restrictions of {{ insert: param, ia-5.1_prm_3 }};

- \[(e)\] Prohibits password reuse for {{ insert: param, ia-5.1_prm_4 }} generations; and

- \[(f)\] Allows the use of a temporary password for system logons with an immediate change to a permanent password.

## Control Objective

Determine if, for password-based authentication:

- \[IA-5(1)(a)\]

  - \[IA-5(1)(a)[1]\] the organization defines requirements for case sensitivity;
  - \[IA-5(1)(a)[2]\] the organization defines requirements for number of characters;
  - \[IA-5(1)(a)[3]\] the organization defines requirements for the mix of upper-case letters, lower-case letters, numbers and special characters;
  - \[IA-5(1)(a)[4]\] the organization defines minimum requirements for each type of character;
  - \[IA-5(1)(a)[5]\] the information system enforces minimum password complexity of organization-defined requirements for case sensitivity, number of characters, mix of upper-case letters, lower-case letters, numbers, and special characters, including minimum requirements for each type;

- \[IA-5(1)(b)\]

  - \[IA-5(1)(b)[1]\] the organization defines a minimum number of changed characters to be enforced when new passwords are created;
  - \[IA-5(1)(b)[2]\] the information system enforces at least the organization-defined minimum number of characters that must be changed when new passwords are created;

- \[IA-5(1)(c)\] the information system stores and transmits only encrypted representations of passwords;

- \[IA-5(1)(d)\]

  - \[IA-5(1)(d)[1]\] the organization defines numbers for password minimum lifetime restrictions to be enforced for passwords;
  - \[IA-5(1)(d)[2]\] the organization defines numbers for password maximum lifetime restrictions to be enforced for passwords;
  - \[IA-5(1)(d)[3]\] the information system enforces password minimum lifetime restrictions of organization-defined numbers for lifetime minimum;
  - \[IA-5(1)(d)[4]\] the information system enforces password maximum lifetime restrictions of organization-defined numbers for lifetime maximum;

- \[IA-5(1)(e)\]

  - \[IA-5(1)(e)[1]\] the organization defines the number of password generations to be prohibited from password reuse;
  - \[IA-5(1)(e)[2]\] the information system prohibits password reuse for the organization-defined number of generations; and

- \[IA-5(1)(f)\] the information system allows the use of a temporary password for system logons with an immediate change to a permanent password.

## Control guidance

This control enhancement applies to single-factor authentication of individuals using passwords as individual or group authenticators, and in a similar manner, when passwords are part of multifactor authenticators. This control enhancement does not apply when passwords are used to unlock hardware authenticators (e.g., Personal Identity Verification cards). The implementation of such password mechanisms may not meet all of the requirements in the enhancement. Cryptographically-protected passwords include, for example, encrypted versions of passwords and one-way cryptographic hashes of passwords. The number of changed characters refers to the number of changes required with respect to the total number of positions in the current password. Password lifetime restrictions do not apply to temporary passwords. To mitigate certain brute force attacks against passwords, organizations may also consider salting passwords.

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
