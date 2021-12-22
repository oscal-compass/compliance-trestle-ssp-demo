# Setup instructions
- Simple order of operations preserved for demo users interested in recreating this capability

1. `trestle init`

2. Import NIST 800-53 r4: `trestle import -f path_to_existing_catalog.json -o NIST_800-53_r4`

3. Create 'ACME_custom' catalog: `trestle create catalog --output ACME_custom --extension json`

3. Create 'ACME_Official' profile: `trestle create profile --output ACME_Official --extension json`
   1. Update descriptive metadata


4. Create 'ACME_int_guidance' profile:`trestle create profile --output ACME_int_guidance --extension json`

5. Create ACME platform ssp: `trestle create system-security-plan --output ACME_platform --extension json`

6. Setup 