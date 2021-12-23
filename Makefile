pre-commit: 
	pre-commit install

install:
	python3 -m pip install  --upgrade pip setuptools
	python3 -m pip install 'compliance-trestle>=0.33.0'
	python3 -m pip install pandas gitpython
	python3 -m pip install pre-commit
	python3 -m pip install python-semantic-release
	pre-commit install

mdformat:
	pre-commit run mdformat --all-files

update-markdown: update-oscal
	trestle author catalog-generate --name ACME_custom --output ACME_custom_controls
	trestle author profile-generate --name ACME_Official --output ACME_official_profile --set-parameters -y assets/extra-profile-metadata.yml -phv
	trestle author profile-generate --name ACME_int_guidance --output ACME_internal_profile -y assets/extra-ssp-metadata.yml -phv
	trestle author ssp-generate --profile ACME_int_guidance --output ACME_platform_ssp -y assets/extra-ssp-metadata.yml -phv

update-oscal:
	trestle author catalog-assemble -m ACME_custom_controls -o ACME_custom
	trestle author profile-assemble -m ACME_official_profile -o ACME_Official -n ACME_Official --set-parameters
	trestle author profile-assemble -m ACME_internal_profile -o ACME_int_guidance -n ACME_int_guidance
	trestle author ssp-assemble -m ACME_platform_ssp -o ACME_SSP

bootstrap-markdown:
	trestle author catalog-generate --name ACME_custom --output ACME_custom_controls
	trestle author profile-generate --name ACME_Official --output ACME_official_profile --set-parameters -y assets/extra-profile-metadata.yml
	trestle author profile-generate --name ACME_int_guidance --output ACME_internal_profile -y assets/extra-ssp-metadata.yml
	trestle author ssp-generate --profile ACME_int_guidance --output ACME_platform_ssp -y assets/extra-ssp-metadata.yml


ssp-markdown: update-markdown
	trestle author jinja -i acme_platform_ssp.md.jinja -ssp ACME_SSP -p ACME_int_guidance -o acme_platform_ssp.md
ssp-word: ssp-markdown
	pandoc acme_platform_ssp.md --from markdown+table_captions+implicit_figures+rebase_relative_paths -t docx --reference-doc ssp_word_template.docx -s --toc -o acme_platform_ssp.docx