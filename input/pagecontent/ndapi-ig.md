### National Directory API

#### Introduction

The primary focus of the National Directory API actor implementation guide is a RESTful API for providing data from the National Directory of Healthcare Providers & Services (NDH). The National Directory API only supports a one-directional flow of information from NDH into Distributed Access/Workflow Directories (i.e., HTTP GETs).

The conformance criteria for the National Directory API are specified within its [Capability Statements](CapabilityStatement-ndh-server.html), in accordance with IG (Implementation Guide) standards.

In profiles, the "Must Support" flag indicates if data exists for the specific property, then it must be represented as defined in the National Directory API actor IG. If the element is not available from a system, this is not required, and may be omitted. See [Conformance Must Support](conformance.html#must-support).

Conceptually, this guide was written to describe the flow of information from a central source of verified healthcare directory data to local workflow environments. We envisioned NDH which functioned as a “source of truth” for a broad set of provider data available to support local business needs and use cases. A local environment could readily obtain all or a subset of the data it needed from NDH and have confidence that the information was accurate. If necessary, a local environment could supplement NDH data with additional data sourced and/or maintained locally. For example, a local environment doing provider credentialing might rely on NDH for demographic information about a provider (e.g., name, address, educational history, license information, etc.), but also ask the provider for supplementary information such as their work history, liability insurance coverage, or military experience. Likewise, we envisioned that NDH would primarily share information with other systems, rather than individual end users or the public.

The content of this guide, however, does not preclude it from being implemented for smaller “local” directories, or accessed by the public. Generally, conformance requirements throughout the guide are less tightly constrained to support a wider variety of possible implementations. We did not want to set strict requirements about the overall design, technical architecture, capabilities, etc. of a verified national directory that might prevent adoption of this standard. For example, although we would expect a verified national directory to gather and share information about healthcare provider insurance networks and health plans, implementations are not required to do so to be considered conformant.

The NDH may contain a large amount of data that will not be relevant to all use cases or local needs. Therefore, the National Directory API defines a number of search parameters to enable users to express the scope of a subset of data they care to access. For example, implementations are required to support searches for Organizations based on address, endpoint, identifier, name/alias, and relationship to a parent organization. In general, parameters for selecting resources based on a business identifier, status, type, or relationship (i.e., reference) are required for all implementations. Most parameters may be used in combination with other parameters and support more “advanced” capabilities like modifiers and chains.

#### Restricted Content 

We envision NDH as a public or semi-public utility and make a significant portion of the information openly available. However, NDH may include sensitive data that is not publicly accessible or accessible to every verified healthcare directory stakeholder. For example, an implementer might not want to make data about military personnel, emergency responders/volunteers, or domestic violence shelters available to everyone with access to the verified national directory, or to users in a local environment who have access to data obtained from NDH.

We expect that NDH operational policies and legal agreements will clearly delineate which data stakeholders can access, and if necessary, require stakeholders to protect the privacy/confidentiality of sensitive information in downstream local environments.

#### National Directory API

![NationalDirectoryApiDiagram](NDH Exchange.png)

### National Directory API Capabilities
The NDH supports the FHIR Search mechanism for Distributed Workflow Directory to query data from the NDH. The supported search parameters are defined in the National Directory API capability statement. 
***[NDH Server CapabilityStatement]***

{% include markdown-link-references.md %}