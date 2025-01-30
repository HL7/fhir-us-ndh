### The National Directory of Healthcare Providers & Services (NDH) Base Profiles
The following presents the list of base NDH profiles. Each profile defines the minimum mandatory elements, extensions, and terminology requirements that are required to be present (MUST support). For every profile, there is a simple summary of  requirements and guidance, the usage and scope of the profile, and the boundaries and relationship with other profiles. A structured table presents a [logical view](https://hl7.org/fhir/R4/formats.html#table) of the content in both a differential and snapshot view. This is complemented with references to relevant terminologies, search parameters, and examples.

* [Base CareTeam]
* [Base Endpoint]
* [Base HealthcareService]
* [Base InsurancePlan]
* [Base Location]
* [Base Network]
* [Base Organization]
* [Base OrganizationAffiliation]
* [Base Practitioner]
* [Base PractitionerRole]
* [Base Restriction]
* [Base Verification]

### The NDH Extensions And Their Relationship With The NDH Base Profiles
To address the particular use case requirements of the NDH, a set extension is defined. The subsequent table demonstrates where these extensions are incorporated within the profiles.
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Extension/Profile|[Base CareTeam]|[Base Endpoint]|[Base HealthcareService]|[Base InsurancePlan]|[Base Location]|[Base Network]|[Base Organization]|[Base OrganizationAffiliation]|[Base Practitioner]|[Base PractitionerRole]|[Base Restriction]
*[NDH Accessibility]*                            |     |     |     |     | Yes |     |     |     | Yes |     |     
*[NDH Associated Servers]*                       |     | Yes |     |     |     |     |     |     |     |     |        
*[NDH Communication Proficiency]*                |     |     |     |     |     |     |     |     | Yes |     |     
*[NDH Contactpoint Availabletime]*               | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH Delivery Method]*                          |     |     | Yes |     |     |     |     |     |     |     |     
*[NDH Digital Certificate]*                      |     |     |     |     |     |     | Yes |     | Yes | Yes |     
*[NDH Dynamic Registration]*                     |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Access Control Mechanism]*        |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Connection Type]*                 |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Connection Type Version]*         |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint IHE Specific Connection Type]*    |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Rank]*                            |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Reference]*                       | Yes |     |     |     |     |     |     |     | Yes |     |     
*[NDH Endpoint Usecase]*                         |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Endpoint Non FHIR Usecase]*                |     | Yes |     |     |     |     |     |     |     |     |   
*[NDH Endpoint Testing Certification]*           |     | Yes |     |     |     |     |     |     |     |     |
*[NDH Funding Source]*                           |     |     | Yes |     |     |     | Yes |     |     |     |     
*[NDH Healthcareservice Reference]*              | Yes |     |     |     |     |     |     |     |     |     |     
*[NDH HealthcareService or Program Requirement]* |     |     | Yes |     |     |     |     |     |     |     |     
*[NDH FHIR IG]*                                  |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Identifier Status]*                        | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH InsurancePlan Reference]*                  |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Language Speak]*                           |     |     | Yes |     | Yes |     | Yes |     |     |     |     
*[NDH Location Reference]*                       | Yes |     |     |     |     | Yes |     |     |     |     |     
*[NDH Logo]*                                     |     |     | Yes |     |     |     | Yes | Yes |     |     |     
*[NDH Network Reference]*                        |     |     | Yes |     |     |     |     |     |     | Yes |     
*[NDH NewPatients]*                              |     |     | Yes |     | Yes |     |     |     |     | Yes |     
*[NDH Orginization Alias Period]*                |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Organization Alias Type]*                  |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Org Description]*                          |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Payment Accepted]*                         |     |     | Yes |     |     |     | Yes |     |     |     |     
*[NDH Practitioner Qualification]*               |     |     |     |     |     |     |     |     | Yes |     |     
*[NDH Qualification]*                            |     |     |     |     |     |     | Yes | Yes |     | Yes |     
*[NDH Rating]*                                   |     |     | Yes |     |     |     | Yes |     | Yes | Yes |     
*[NDH Required Document]*                        |     |     | Yes |     |     |     |     |     |     |     |     
*[NDH Secure Exchange Artifacts]*                |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Trust Framework]*                          |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Usage Restriction]*                        | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH usage restriction fhir path]*              |     |     |     |     |     |     |     |     |     |     | Yes 
*[NDH Verification Status]*                      | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH Via Intermediary]*                         | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH Endpoint EnvironmentType]*                 |     | Yes |     |     |     |     |     |     |     |     |


### NDH Base Search Parameters
To facilitate efficient data retrieval and standardized querying from the NDH, a series of search parameters has been established. The associated set of search parameters for each profile can be found in the subsequent list.

* [CareTeam Search Parameters]
* [Endpoint Search Parameters]
* [HealthcareService Search Parameters]
* [InsurancePlan Search Parameters]
* [Location Search Parameters]
* [Network Search Parameters]
* [Organization Search Parameters]
* [OrganizationAffiliation Search Parameters]
* [Practitioner Search Parameters]
* [PractitionerRole Search Parameters]
* [Verification Search Parameters]

### NDH Base Code Systems
Due to the unavailability of certain required concepts in existing code systems, a distinct set of code systems has been defined within the NDH. You can view this list via the link provided below:
* [NDH Base Code System]


### NDH Base Value Sets
The use cases within NDH require specific values not found in the existing value sets. As such, the NDH has defined a set of value sets, which are listed via the link provided below:
* [NDH Base Value Set]




{% include markdown-link-references.md %}