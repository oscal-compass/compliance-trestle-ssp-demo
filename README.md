# compliance-trestle-ssp-demo

[Compliance-trestle](https://ibm.github.io/compliance-trestle) (trestle) is a set of tools to facilitate compliance-as-code workflows, anchored in the [Open Security Controls Assessment Language](https://pages.nist.gov/OSCAL/) (OSCAL).

This demo requires trestle release 2.1.1 or greater.

This repository illustrates how to use `trestle author` functionality to make OSCAL more approachable. 
Specifically it shows how some tasks, such as writing corporate guidance, SSP control implementation descriptions and setting of parameters can be simplified using a markdown workflow.

Markdown was specifically chosen because OSCAL leverages markdown as its markup language in prose fields (for `json` and `yaml` formats only).

This repo is anchored around 'ACME Inc.' based on the description below. As additional capabilities are created in the core of trestle this repository will be expanded.


## ACME Inc requirements
ACME Inc have based their security controls on NIST 800-53 rev4. In addition to this ACME have created a number of supplementary controls based on various market based regulations they are exposed to. ACME needs to produce an SSP for their clients.

ACME have 'formal' guidance, including setting control parameters, which they release to their contractors, and separately additional guidance on 'best practices' within ACME to implement the controls.

In addition, ACME have an overall system comprised of two components: DB and IDSERVICE.  Each component has special parameters that apply to a subset of controls according to rules specified in the components.  The description of rules and how they map to controls is specified in a CSV spreadsheet file - and trestle first converts that CSV file into an OSCAL componenent definition in JSON format.

With the control catalogs, the profiles and the component definition all present in the trestle workspace, a system security plan can then be created, also in JSON format.  With the JSON SSP, ACME can then produce a nicely formatted Word version of the SSP that can be used with clients for the services ACME provide - in addition to the JSON version if/when the client has automated tooling to consume OSCAL directly.

### Currently out of scope
ACME is planning on FedRAMP, however, this is not part of the current scope.


## Using the demo
The demo has been pre-configured with a set of interlocking catalogs, profiles, component definition, and the SSP - but the generated elements may be removed or "cleaned" and reconstructed via trestle using the raw original artefacts.

![Information flow](docs/information_flow.png)

The diagram above shows how the repository operates. Red boxes are OSCAL json objects, blue are editable markdown equivalents, and orange boxes are target output documents. The narrow black lines represent information flow during profile resolution processes via href imports. The thick white and gray arrows represent generation of new documents via the execution of trestle commands.  The final thick green arrow corresponds to the pandoc conversion of the SSP markdown to Word format (.docx).

The green line on the left encircles the source artefacts from which all the other documents are derived.  A clean operation will leave only those artefacts and delete the rest.
## Running this demo locally:
- Trestle version 2.1.1 and above is required.
- Users will need to [install pandoc](https://pandoc.org/installing.html). Known to work above version `2.16.2`
- This demo has requirements that can be loaded with `make install`.

In this demo there are five OSCAL objects that can be updated by editing markdown equivalent documents, per control.
1. The custom control catalog. The prose for the control statements can be added and removed through the `md_ACME_custom_controls` directory
2. The ACME official profile. Parameters can be set and additional guidance can be provided in `md_ACME_official_profile`.
3. The ACME internal profile, that incorporates the official profile, where additional internal guidance can be added.
4. The ACME component definition, `ACME_comp_def`, originally specified via CSV file, comprising two components.  Changes can be made via the original CSV file or the corresponding markdown directory, `md_ACME_comp_def`.
4. The System Security Plan, where responsible roles, control implementation status, and the control responses can be set in `md_ACME_platform_ssp`.

A sync between the OSCAL and markdown equaivalents can be triggered by running `make update-markdown`.

## Output documents
1. If starting from the source artefacts you must first run `make initialize-markdown` to generate the component definition from the CSV and create the markdown content for all the JSON documents.
1. After all the markdown directories are created by `initialize-markdown` the final step is to add response and status information to the control markdown files.  This is done for control `AC-2` by the script `insert_response_prose.py`.  Note that the response prose and the implementation statuses are pulled in from the edited markdown to the assembled JSON documents.  Normally updates to the response prose and statuses would be part of an ongoing editing process.
1. Running `make ssp-word` will execute the full pipline, updating the JSON files with any markdown edits and generate the updated SSP in Word format.
1. The normal editing process involves selectively editing the markdown files and running `make update-oscal` to incorporate any edits into the corresponding OSCAL JSON files.
1. If the rules or components are changed in the CSV, the command `make create-comp-def` must be run to have trestle execute a task to convert the CSV to OSCAL JSON.
1. `make clean` will remove all generated artefacts and markdown, providing a fresh start that begins with `make initialize-markdown`.

## Important notes
1. In the final ssp the control statements are modified to include final values for parameters referenced by the prose.  The manner of parameter substitution can be controlled by the `--bracket-format` and `--value-assigned-prefix` options of the jinja command in `make ssp-markdown`.  The values given in this demo cause brackets to be placed around parameter substitutions, and if a value was assigned by the profile imported by the ssp, it is prefixed with `ACME assigned:`  For example, in `AC-1.a` you will find `disseminates to [ACME Assigned: all personnel]:` whereas in `ac-2_prm_2` no value is assigned by the profile, so instead of substituting `ACME assigned:` and the values, the label for the parameter is placed in the brackets instead.
1. The option `--set-parameters` used in `profile-assemble` is important because it causes any edits to the yaml header of the markdown files to change values for parameters in the assembled JSON profile.  Without that option, edits to the parameters in the header will not take effect.
1. In the `TABLE OF PARAMETERS` for `AC-1` note that the Parameter ID's have a more readable form such as `AC-1 Personell` instead of `ac-1_prm_1`.  This is because a `display-name` property was assigned in the ACME internal guidance profile.  You will also see those values in the corresponding markdown files for the profile.  To add or change a display name you can either edit the original profile or the markdown header for the control, following the example for `AC-1`.
1. If the jinja command fails with a kind of "template error" it may be caused by an errant `{}` construct in the markdown.  Inspection of the markdown for such braces may identify the problem.
1. Many of the commands in the jinja template have additional options to control the format of the final word document.  Consult the `trestle` API if formatting changes are desired.
