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

### NDH Base Extensions 
* [NDH Accessibility]
* [NDH Associated Servers]
* [NDH Careteam Alias]
* [NDH Communication Proficiency]
* [NDH ContactPoint AvailableTime]
* [NDH Delivery Method]
* [NDH Dynamic Registration]
* [NDH Endpoint Reference]
* [NDH Endpoint Connection Type]
* [NDH Endpoint Rank]
* [NDH Endpoint Usecase]
* [NDH Funding Source]
* [NDH HealthcareService Reference]
* [NDH FHIR IG]
* [NDH Identifier Status]
* [NDH InsurancePlan Reference]
* [NDH Location Reference]
* [NDH Network Reference]
* [NDH NewPatients]
* [NDH Orginization Alias Period]
* [NDH Orgnization Alias Type]
* [NDH Org Description]
* [NDH Payment Accepted]
* [NDH Practitioner Qualification]
* [NDH Qualification]
* [NDH Rating]
* [NDH Required Document]
* [NDH Secure Exchange Artifacts]
* [NDH Trust Framework]
* [NDH Usage Restriction]
* [NDH Via Intermediary]

### NDH Extensions are used in NDH Base Profiles

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Extension/Profile|[Base CareTeam]|[Base Endpoint]|[Base HealthcareService]|[Base InsurancePlan]|[Base Location]|[Base Network]|[Base Organization]|[Base OrganizationAffiliation]|[Base Practitioner]|[Base PractitionerRole]|[Base Restriction]|[Base Verification]|
:---------------:|:------:|:------:|:-------:|:--------:|:------:|:------:|:-------:|:-------:|:------:|:------:|:------:|:-------:|
*[NDH Accessibility]*| | | | |Yes| | | |Yes| | | |
*[NDH Associated Servers]*| |Yes| | | | | | | | | | |
*[NDH Careteam Alias]*|Yes| | | | | | | | | | | |
*[NDH Communication Proficiency]*| | | | | | | | | Yes | | | |
*[NDH Contactpoint Availabletime]*|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes| | |
*[NDH Delivery Method]*           | | | Yes | | | | | | | | | |
*[NDH Digital Certificate]*       | | | | | | | Yes | | Yes | Yes | | |
*[NDH Dynamic Registration]*      | | Yes | | | | | | | | | | | 
*[NDH Endpoint Connection Type]*| | Yes | | | | | | | | | | |
*[NDH Endpoint Rank]*| | Yes | | | | | | | | | | |
*[NDH Endpoint Reference]*| Yes | | | | | | | | Yes | | | |
*[NDH Endpoint Usecase]*| | Yes | | | | | | | | | | |
*[NDH Funding Source]*| | | Yes | | | | Yes | | | | | |
*[NDH Healthcareservice Reference]*| Yes | | | | | | | | | | | |
*[NDH FHIR IG]*| | Yes | | | | | | | | | | |
*[NDH Identifier Status]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |
*[NDH InsurancePlan Reference]*| | | | | | | Yes | | | | | |
*[NDH Location Reference]*| Yes | | | | | Yes | | | | | | |
*[NDH Network Reference]*| | | | | | | | | | Yes | | |
*[NDH NewPatients]*| | | Yes | | Yes | | | | Yes | | | |
*[NDH Orginization Alias Period]*| | | | | | | Yes | | | | | |
*[NDH Orgnization Alias Type]*| | | | | | | Yes | | | | | |
*[NDH Org Description]*| | | | | | | Yes | | | | | |
*[NDH Payment Accepted]*| | | Yes | | | | Yes | | | | | |
*[NDH Practitioner Qualification]*| | | | | | | | | Yes | Yes | | |
*[NDH Qualification]*| | | | | | | Yes | Yes | | | | |
*[NDH Rating]*| | | Yes | | | | Yes | | Yes | Yes | | |
*[NDH Required Document]*| | | Yes | | | | | | | | | |
*[NDH Secure Exchange Artifacts]*| | Yes | | | | | | | | | | |
*[NDH Trust Framework]*| | Yes | | | | | | | | | | |
*[NDH Usage Restriction]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |
*[NDH Via Intermediary]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |


       
{: .grid}

### NDH Base Search Parameters Defined by NDH IG
* [endpoint-mime-type]
* [endpoint-usecase-standard]
* [endpoint-usecase-type]

* [careteam-endpoint]
* [careteam-location]
* [careteam-name]
* [careteam-organization]
* [careteam-service]

* [healthcareservice-category]
* [healthcareservice-eligibility]
* [healthcareservice-new-patient]
* [healthcareservice-new-patient-from-network]
* [healthcareservice-type]

* [insuranceplan-coverage-area]
* [insuranceplan-coverage-benefit-type]
* [insuranceplan-coverage-type]
* [insuranceplan-coverage-network]
* [insuranceplan-network]
* [insuranceplan-plan-network]
* [insuranceplan-plan-type]

* [location-accessibility]
* [location-contains]
* [location-new-patient]
* [location-new-patient-from-network]

* [network-coverage-area]

* [practitioner-qualification-code]
* [practitioner-qualification-issuer]
* [practitionerrole-network]
* [practitionerrole-new-patient]

* [practitionerrole-new-patient-from-network]

* [verificationresult-attestation-who]
* [verificationresult-primarysource-validation-status]
* [verificationresult-primarysource-type]
* [verificationresult-status]
* [verificationresult-target]

### NDH Base Code System
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