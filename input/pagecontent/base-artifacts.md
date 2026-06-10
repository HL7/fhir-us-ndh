### The National Directory of Healthcare Providers & Services (NDH) Profiles

The following presents the list of Directory NDH profiles. Each profile defines the minimum mandatory elements, extensions, and terminology requirements that are required to be present [Must Support](conformance.html#must-support)). For every profile, there is a simple summary of  requirements and guidance, the usage and scope of the profile, and the boundaries and relationship with other profiles. A structured table presents a [logical view](https://hl7.org/fhir/R4/formats.html#table) of the content in both a differential and snapshot view. This is complemented with references to relevant terminologies, search parameters, and examples.

{% include table-profiles.xhtml %}

<!--
* [Directory Endpoint]
* [Directory Group]
* [Directory HealthcareService]
* [Directory InsurancePlan]
* [Directory Location]
* [Directory Network]
* [Directory Organization]
* [Directory OrganizationAffiliation]
* [Directory Practitioner]
* [Directory PractitionerRole]
* [Directory Verification]
-->

### The NDH Extensions

To address the particular use case requirements of the NDH, a set extension is defined:

{% include table-extensions.xhtml %}

<!--
* [NDH Accessibility]
* [NDH Associated Servers]
* [NDH Communication Proficiency]
* [NDH Contact Point Available Time]
* [NDH Delivery Method]
* [NDH Dynamic Registration]
* [NDH Endpoint Access Control Mechanism]
* [NDH Endpoint IHE Specific Connection Type]
* [NDH Endpoint Rank]
* [NDH Endpoint Reference]
* [NDH Endpoint Testing Certification]
* [NDH Funding Source]
* [NDH HealthcareService or Program Requirement]
* [NDH FHIR IG]
* [NDH Identifier Status]
* [NDH InsurancePlan Reference]
* [NDH Language Speak]
* [NDH Location Reference]
* [NDH Logo]
* [NDH Network Reference]
* [NDH NewPatients]
* [NDH Organization Alias Period]
* [NDH Organization Alias Type]
* [NDH Org Description]
* [NDH Payment Accepted]
* [NDH Practitioner Qualification]
* [NDH Qualification]
* [NDH Rating]
* [NDH Required Document]
* [NDH Secure Exchange Artifacts]
* [NDH Trust Framework]
* [NDH Verification Status]
* [NDH Via Intermediary]
* [NDH Endpoint EnvironmentType]
* [NDH CMS Enrollment In Good Standing]
* [NDH CMS IAL2 Verified]
* [NDH Aligned with CMS Data Network]
-->

### NDH Search Parameters

To facilitate efficient data retrieval and standardized querying from the NDH, a series of search parameters has been established. The associated set of search parameters for each profile can be found in the subsequent list.

{% include table-searchparameters.xhtml %}

<!--
* [Endpoint Search Parameters]
* [Group Search Parameters]
* [HealthcareService Search Parameters]
* [InsurancePlan Search Parameters]
* [Location Search Parameters]
* [Network Search Parameters]
* [Organization Search Parameters]
* [OrganizationAffiliation Search Parameters]
* [Practitioner Search Parameters]
* [PractitionerRole Search Parameters]
* [Verification Search Parameters]
-->

### NDH Code Systems

Due to the unavailability of certain required concepts in existing code systems, a distinct set of code systems has been defined within the NDH. You can view this list via the link provided below:

{% include table-codesystems.xhtml %}

<!--
* [NDH Code System]
-->

### NDH Value Sets

The use cases within NDH require specific values not found in the existing value sets. As such, the NDH has defined a set of value sets, which are listed via the link provided below:

{% include table-valuesets.xhtml %}

<!--
* [NDH Value Set]
-->

{% include markdown-link-references.md %}