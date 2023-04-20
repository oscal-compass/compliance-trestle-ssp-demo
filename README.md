# compliance-trestle-ssp-demo

[Compliance-trestle](https://ibm.github.io/compliance-trestle) (trestle) is a set of tools to facilitate compliance-as-code workflows, anchored in the [Open Security Controls Assessment Language](https://pages.nist.gov/OSCAL/) (OSCAL).

This demo requires trestle release 2.1.0 or greater.

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
- Trestle version 2.1.0 and above is required.
- Users will need to [install pandoc](https://pandoc.org/installing.html). Known to work above version `2.16.2`
- This demo has requirements that can be loaded with `make install`.

In this demo there are five OSCAL objects that can be updated by editing markdown equivalent documents, per control.
1. The custom control catalog. The prose for the control statements can be added and removed through the `md_ACME_custom_controls` directory
2. The ACME official profile. Parameters can be set and additional guidance can be provided in `md_ACME_official_profile`.
3. The ACME internal profile, that incorporates the official profile, where additional internal guidance can be added.
4. The ACME component definition, `ACME_comp_def`, originally specified via CSV file, comprising two components.  Changes can be made via the original CSV file or the corresponding markdown directory, `md_ACME_comp_def`.
4. The System Security Plan, where responsible roles, control implementation status, and the control responses can be set in `md_ACME_platform_ssp`.

A sync between the OSCAL and markdown equaivalents can be triggered by running `make update-markdown`.

### Output documents.
1. If starting from the source artefacts you must first run `make initialize-markdown` to generate the component definition from the CSV and create the markdown content for all the JSON documents.
1. Running `make ssp-word` will execute the full pipline, updating the json files with any markdown edits and generate the updated SSP in Word format.
1. The normal editing process involves selectively editing the markdown files and running `make update-oscal` to incorporate any edits into the corresponding OSCAL JSON files.
1. If the rules or components are changed in the CSV, the command `make create-comp-def` must be run to have trestle execute a task to convert the CSV to OSCAL JSON.
1. `make clean` will remove all generated artefacts and markdown, providing a fresh start that begins with `make initialize-markdown`.
