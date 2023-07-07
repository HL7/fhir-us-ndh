### Background & Scope
The FHIR specification contains a security meta tag which can be used to inform systems of the sensitivity of resources. The tag can be used by access control mechanisms to ensure content isn’t exposed inappropriately. However, the security meta tag can only indicate sensitivity at the resource level, and provides relatively little context about the restriction.

We anticipate that the operational policies and legal agreements of NDH will offer clarity regarding the data stakeholders can access. These policies, if needed, will mandate stakeholders to preserve the privacy and confidentiality of any sensitive data within local downstream environments. In order to ensure this, we have integrated this 'Restriction' profile, which is based on the 'Consent' resource. The purpose of this profile is to communicate any limitations associated with an entire specific resource instance, or certain elements of a specific resource instance for the purpose of resource instance collection or acquisition. The restriction resource is always **encompassed within the resource instance that requires restriction**. For instance:

The entirety of a particular women's shelter HealthcareService resource instance can be restricted. See the example below:
***[HealthcareService/HealthcareServiceWomenShelterAll]***

The location and phone number of a specific women's shelter HealthcareService resource instance can be restricted. See the example below:
***[HealthcareService/HealthcareServiceWomenShelter]***



{% include markdown-link-references.md %}

