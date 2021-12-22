# compliance-trestle-ssp-demo

[Compliance-trestle](https://ibm.github.io/compliance-trestle) (trestle) is an assembly of functionality to facilitate compliance-as-code workflows, anchored in the [Open Security Controls Assessment Language](https://pages.nist.gov/OSCAL/) (OSCAL).

This repository illustrates how to use `trestle author` functionality to make OSCAL more approachable. 
Specifically it shows how some tasks, such as writing corporate guidance, SSP control implementation descriptions and setting of parameters can be simplified using a markdown workflow.

Markdown was specifically chosen as OSCAL leverages markdown as it's markup language in prose fields (for `json` and `yaml` formats only).

This repo is anchored around 'ACME Inc.' based on the description below. As additional capabilities are created in the core of trestle this repository will be expanded.


## ACME Inc requirements
ACME Inc have based their security controls on NIST 800-53 rev4. In addition to this ACME have created a number of supplementary controls based on various market based regulations they are exposed to. ACME needs to produce an SSP for their clients.

ACME have 'formal' guidance, including setting control parameters, which they release to their contractors, and separately additional guidance on 'best practices' within ACME to implement the controls.

ACME produce a word SSP which is used with clients for the services ACME provide, until such a time at which their clients can directly consume OSCAL.

### Currently out of scope
ACME is planning on FedRAMP, however, this is not part of the current scope.



## Using the demo
- The demo has been pre-configured with an appropriate set of 
### Content layout
#### Markdown editable
To edit the custom controls 

#### OSCAL equivalent

#### Output documents
### Syncing / updating OSCAL content.

### Generating output ssps




## Running this demo locally:
- Trestle version 0.33.1 and above is required.
- Users will need to [install pandoc](https://pandoc.org/installing.html). Known to work above version `2.16.2`



## Current caveats:
- Link resolution
  - In order for pandoc to operate correctly on links (such as images) they must be correct in the final output. This implies that all links should relative too the location of the output of `trestle author jinja`
  - The net result: keep any markdown includes in the same folder as the output of `trestle author jinja`