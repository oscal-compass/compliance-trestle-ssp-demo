pre-commit: 
	pre-commit install

install:
	python3 -m pip install  --upgrade pip setuptools
	python3 -m pip install 'compliance-trestle>=2.1.0'
	python3 -m pip install pandas gitpython
	python3 -m pip install pre-commit
	python3 -m pip install python-semantic-release
	pre-commit install

mdformat:
	pre-commit run mdformat --all-files

create-comp-def:
	trestle task csv-to-oscal-cd -c assets/csv-to-oscal-cd.config

update-oscal:
	trestle author catalog-assemble -m md_ACME_custom_catalog -o ACME_custom
	trestle author profile-assemble -m md_ACME_official_profile -o ACME_official --set-parameters
	trestle author profile-assemble -m md_ACME_internal_guidance_profile -o ACME_int_guidance
	trestle author component-assemble -m md_ACME_comp_def -o ACME_comp_def
	trestle author ssp-assemble -m md_ACME_platform_ssp -cd ACME_comp_def -o ACME_SSP

update-markdown: update-oscal
	trestle author catalog-generate --name ACME_custom --output md_ACME_custom_catalog
	trestle author profile-generate --name ACME_official --output md_ACME_official_profile -y assets/extra-profile-metadata.yml
	trestle author profile-generate --name ACME_int_guidance --output md_ACME_internal_guidance_profile -y assets/extra-ssp-metadata.yml
	trestle author component-generate --name ACME_comp_def --output md_ACME_comp_def
	trestle author ssp-generate -cd ACME_comp_def --profile ACME_int_guidance --output md_ACME_platform_ssp -y assets/extra-ssp-metadata.yml

initialize-markdown: create-comp-def
	trestle author catalog-generate --name ACME_custom --output md_ACME_custom_catalog
	trestle author profile-generate --name ACME_official --output md_ACME_official_profile -y assets/extra-profile-metadata.yml
	trestle author profile-generate --name ACME_int_guidance --output md_ACME_internal_guidance_profile -y assets/extra-ssp-metadata.yml
	trestle author component-generate --name ACME_comp_def --output md_ACME_comp_def
	trestle author ssp-generate -cd ACME_comp_def --profile ACME_int_guidance --output md_ACME_platform_ssp -y assets/extra-ssp-metadata.yml
	python -m insert_response_prose

ssp-markdown: update-markdown
	trestle author jinja -i ACME_platform_ssp.md.jinja -ssp ACME_SSP -p ACME_int_guidance -o ACME_platform_ssp.md -bf "[.]" -vap "ACME Assigned:" -vnap "Assignment:"

ssp-word: ssp-markdown
	pandoc ACME_platform_ssp.md --from markdown+table_captions+implicit_figures+rebase_relative_paths -t docx --reference-doc ssp_word_template.docx -s --toc -o ACME_platform_ssp.docx

clean:
	rm -rf md_*
	rm -rf component-definitions/ACME
	rm -rf system-security-plans/ACME_SSP
	rm -f ACME_platform_ssp.md ACME_platform_ssp.docx
