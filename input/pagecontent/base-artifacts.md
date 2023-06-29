### NDH Base Profiles
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

### NDH Extensions are used in NDH Base Profiles

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Extension/Profile|[Base CareTeam]|[Base Endpoint]|[Base HealthcareService]|[Base InsurancePlan]|[Base Location]|[Base Network]|[Base Organization]|[Base OrganizationAffiliation]|[Base Practitioner]|[Base PractitionerRole]|[Base Restriction]
*[NDH Accessibility]*                            |     |     |     |     | Yes |     |     |     | Yes |     |     
*[NDH Associated Servers]*                       |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Careteam Alias]*                           | Yes |     |     |     |     |     |     |     |     |     |     
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
*[NDH Orgnization Alias Type]*                   |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Org Description]*                          |     |     |     |     |     |     | Yes |     |     |     |     
*[NDH Payment Accepted]*                         |     |     | Yes |     |     |     | Yes |     |     |     |     
*[NDH Practitioner Qualification]*               |     |     |     |     |     |     |     |     | Yes |     |     
*[NDH Qualification]*                            |     |     |     |     |     |     | Yes | Yes |     | Yes |     
*[NDH Rating]*                                   |     |     | Yes |     |     |     | Yes |     | Yes | Yes |     
*[NDH Required Document]*                        |     |     | Yes |     |     |     |     |     |     |     |     
*[NDH Secure Exchange Artifacts]*                |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Trust Framework]* |                        |     | Yes |     |     |     |     |     |     |     |     |     
*[NDH Usage Restriction]*                        | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH usage restriction fhir path]*              |     |     |     |     |     |     |     |     |     |     | Yes 
*[NDH Verification Status]*                      | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     
*[NDH Via Intermediary]*                         | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |     


### NDH Base Search Parameters Defined by NDH IG
* [CareTeam Search Parameters]
* [Endpoint Search Parameters]
* [HealthcaserService Search Parameters]
* [InsurancePlan Search Parameters]
* [Location Search Parameters]
* [Network Search Parameters]
* [Organization Search Parameters]
* [OrganizationAffiliation Search Parameters]
* [Practitioner Search Parameters]
* [PractitionerRole Search Parameters]
* [Verification Search Parameters]

### NDH Base Code System
* [NDH Base Code System]
* [AcceptingPatientsCS]
* [AccessibilityCS]
* [CredentialStatusCS]
* [DeliveryMethodCS]
* [EndpointConnectionTypeCS]
* [EndpointPayloadTypeCS]
* [HealthcareServiceCategoryCS]
* [InsurancePlanTypeCS]
* [InsuranceProductTypeCS]
* [LanguageProficiencyCS]
* [OrgAliasTypeCS]
* [OrgTypeCS]
* [OrganizationAffiliationRoleCS]
* [PractitionerRoleCS]
* [QualificationStatusCS]
* [TrustFrameworkTypeCS]
* [ValidationTypeCS]

### NDH Base Value Sets

* [NDH Base Value Set]

* [AcceptingPatientsVS]
* [AccessibilityVS]
* [DeliveryMethodVS]
* [EndpointConnectionTypeVS]
* [EndpointPayloadTypeVS]
* [HealthcareServiceCategoryVS]
* [HealthcareServiceTypeVS]
* [IdentifierStatusVS]
* [IndividualSpecialtyAndDegreeLicenseCertificateVS]
* [InsuranceProductTypeVS]
* [InsurancePlanTypeVS]
* [LanguageProficiencyVS]
* [NetworkTypeVS]
* [OrgTypeVS]
* [OrgAliasTypeVS]
* [OrganizationAffiliationRoleVS]
* [PractitionerRoleVS]
* [QualificationStatusVS]
* [SpecialtiesVS]
* [SpecialtyAndDegreeLicenseCertificateVS]
* [TrustFrameworkTypeVS]
* [VirtualModalitiesVS]


{% include markdown-link-references.md %}