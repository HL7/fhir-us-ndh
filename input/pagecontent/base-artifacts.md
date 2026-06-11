
National Directory of Healthcare Providers & Services (NDH) defines a set Directory Artifacts: Profiles, Extensions, Search Parameters, Code Systems, and Value Sets to support the use cases of the NDH. The following sections provide a listing of these artifacts and a short description.

### The NDH Capability Statements

The NDH Capability Statements define the required and optional capabilities of the FHIR servers that implement the NDH IG. These statements outline the necessary interactions, resources, and operations that must be supported to ensure compliance with the NDH specifications.

{% include table-capabilitystatements.xhtml %}

### The NDH Profiles

The following presents the list of Directory NDH profiles. Each profile defines the minimum mandatory elements, extensions, and terminology requirements that are required to be present [Must Support](conformance.html#must-support)). Within the profile, there is a simple summary of  requirements and guidance, the usage and scope of the profile, and the boundaries and relationship with other profiles.

{% include table-profiles.xhtml %}

### The NDH Extensions

To address the particular use case requirements of the NDH, a set of extensions are defined:

{% include table-extensions.xhtml %}

### NDH Search Parameters

To facilitate efficient data retrieval and standardized querying from the NDH, a series of search parameters have been defined:

{% include table-searchparameters.xhtml %}

### NDH Code Systems

NDH uses standardized code systems wherever possible to ensure interoperability and consistency across healthcare data.
When standardized codes are unavailable, a code systems is defined within the NDH:

{% include table-codesystems.xhtml %}

### NDH Value Sets

NDH uses standardized value sets where possible. Often the value set needs to be specific to use-cases. As such, the NDH has defined a set of value sets:

{% include table-valuesets.xhtml %}

### NDH Operations

NDH defines a set of operations to support specific use cases and workflows. These operations are designed to enhance the functionality of FHIR servers implementing the NDH IG and to provide additional capabilities for data manipulation and retrieval.

{% include table-operationdefinitions.xhtml %}

{% include markdown-link-references.md %}